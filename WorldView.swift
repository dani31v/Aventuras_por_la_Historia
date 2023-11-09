import SwiftUI
import SceneKit

struct WorldView: UIViewRepresentable {
    
    @Binding var scene: SCNScene?
    var zoomFactor: CGFloat = 5.0 // Ajusta esto para cambiar el nivel de zoom
    
    func makeUIView(context: Context) -> SCNView {
        let view = SCNView()
        view.allowsCameraControl = false
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.scene = scene
        view.backgroundColor = .clear
        
        // Añadir el reconocedor de gestos para el tap
        let tapGesture = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handleTap(_:)))
        view.addGestureRecognizer(tapGesture)
        
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        // Aquí puedes actualizar la vista de SCN si es necesario.
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: WorldView
        
        init(_ parent: WorldView) {
            self.parent = parent
        }
        
        @objc func handleTap(_ gestureRecognize: UITapGestureRecognizer) {
            let scnView = gestureRecognize.view as! SCNView
            let location = gestureRecognize.location(in: scnView)
            let hitResults = scnView.hitTest(location, options: [:])
            
            // Verifica si se tocó algún nodo y si ese nodo es parte del "mundo"
            if let result = hitResults.first, result.node.name == "nombreDelNodoDelMundo" {
                
                // Calcular una nueva posición basada en el resultado del hitTest
                let nodePosition = result.worldCoordinates
                let cameraNode = scnView.pointOfView!
                
                // Define una nueva posición de la cámara basada en la posición tocada
                let newPosition = SCNVector3(nodePosition.x, nodePosition.y, cameraNode.position.z - Float(parent.zoomFactor))
                
                // Animar la cámara hacia la nueva posición
                SCNTransaction.begin()
                SCNTransaction.animationDuration = 0.5
                cameraNode.position = newPosition
                cameraNode.look(at: nodePosition)
                SCNTransaction.commit()
            }
        }
    }
}
