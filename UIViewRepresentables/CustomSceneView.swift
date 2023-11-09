import SwiftUI
import SceneKit

struct CustomSceneView: UIViewRepresentable {
    
    @Binding var scene: SCNScene?
    var zoomFactor: CGFloat = 5.0 // Ajusta el zoom según sea necesario
    
    func makeUIView(context: Context) -> SCNView {
        let view = SCNView()
        // ... configura la vista ...
        view.scene = scene
        // Añadir el reconocedor de gestos
        let tapGesture = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handleTap(_:)))
        view.addGestureRecognizer(tapGesture)
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        // Actualiza la vista si es necesario
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: CustomSceneView
        
        init(_ parent: CustomSceneView) {
            self.parent = parent
        }
        
        @objc func handleTap(_ gestureRecognize: UITapGestureRecognizer) {
            guard let scnView = gestureRecognize.view as? SCNView else { return }
            let point = gestureRecognize.location(in: scnView)
            let hitResults = scnView.hitTest(point, options: [:])
            if let result = hitResults.first {
                
                // Encontrar la posición del nodo
                let nodePosition = result.worldCoordinates
                
                // Obtener la cámara actual
                guard let cameraNode = scnView.pointOfView else { return }
                
                // Calcular la nueva posición de la cámara
                var newCameraPosition = SCNVector3()
                newCameraPosition.x = nodePosition.x
                newCameraPosition.y = nodePosition.y
                newCameraPosition.z = nodePosition.z - Float(parent.zoomFactor) // Alejar un poco si es necesario
                
                // Animar la cámara hacia la nueva posición
                SCNTransaction.begin()
                SCNTransaction.animationDuration = 1.0 // Duración de la animación en segundos
                cameraNode.position = newCameraPosition
                // Apuntar la cámara hacia el nodo
                cameraNode.look(at: nodePosition)
                SCNTransaction.commit()
            }
        }
    }
}
