//
//  PencilKitCanvasView.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI
import PencilKit

struct PencilKitCanvasRepresentable: UIViewRepresentable {
    @Binding var image: UIImage?
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvasView = PKCanvasView()
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 10)
        canvasView.drawingPolicy = .anyInput
        canvasView.delegate = context.coordinator
        
      
        if let window = UIApplication.shared.windows.first, let toolPicker = PKToolPicker.shared(for: window) {
            toolPicker.setVisible(true, forFirstResponder: canvasView)
            toolPicker.addObserver(canvasView)
            canvasView.becomeFirstResponder()
        }
        
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, PKCanvasViewDelegate {
        var parent: PencilKitCanvasRepresentable
        
        init(_ parent: PencilKitCanvasRepresentable) {
            self.parent = parent
        }
        
        func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
  
            DispatchQueue.main.async {
                self.parent.image = canvasView.drawing.image(from: canvasView.bounds, scale: 1.0)
            }
        }
    }
}
