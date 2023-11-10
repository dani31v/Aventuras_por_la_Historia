// WorldView.swift
import SwiftUI
import SceneKit

struct WorldView: UIViewRepresentable {
    
    @Binding var scene: SCNScene?
    var zoomFactor: CGFloat = 5.0
    @EnvironmentObject var viewRouter: ViewRouter // Añade el environment object aquí

    func makeUIView(context: Context) -> SCNView {
        let view = SCNView()
        view.allowsCameraControl = true
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.scene = scene
        view.backgroundColor = .clear
        
        let tapGesture = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handleTap(_:)))
        view.addGestureRecognizer(tapGesture)
        
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        uiView.scene = scene
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self, viewRouter: viewRouter) // Pasa el ViewRouter al Coordinator
    }
    
    class Coordinator: NSObject {
        var parent: WorldView
        var viewRouter: ViewRouter // Almacena el ViewRouter
        
        init(_ parent: WorldView, viewRouter: ViewRouter) {
            self.parent = parent
            self.viewRouter = viewRouter
        }
        
        @objc func handleTap(_ gestureRecognize: UITapGestureRecognizer) {
            guard let scnView = gestureRecognize.view as? SCNView else { return }
            let location = gestureRecognize.location(in: scnView)
            let hitResults = scnView.hitTest(location, options: [:])
            
            if let result = hitResults.first {
                if result.node.name == "box" {
                    // El usuario tocó el nodo de prueba, realiza alguna acción aquí
                    print("Box tocado")
                    DispatchQueue.main.async { // Asegúrate de modificar el estado en el hilo principal
                        self.viewRouter.selectedView = "HernanC3"
                    }
                } else {
                    // Se tocó otra parte de la escena, realiza la acción de zoom
                    let nodePosition = result.worldCoordinates
                    let cameraNode = scnView.pointOfView!
                    let newPosition = SCNVector3(nodePosition.x, nodePosition.y, cameraNode.position.z - Float(parent.zoomFactor))
                    animateCamera(to: newPosition, in: scnView, lookAt: nodePosition)
                }
            }
        }
        
        func animateCamera(to position: SCNVector3, in view: SCNView, lookAt target: SCNVector3) {
            guard let cameraNode = view.pointOfView else { return }
            
            SCNTransaction.begin()
            SCNTransaction.animationDuration = 0.5
            cameraNode.position = position
            cameraNode.look(at: target)
            SCNTransaction.commit()
        }
    }
}
struct ContentWorldView: View {
    @State private var scene: SCNScene? = SCNScene(named: "mundo.scn")
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        WorldView(scene: $scene)
            .edgesIgnoringSafeArea(.all)
            .environmentObject(viewRouter)
    }
}
