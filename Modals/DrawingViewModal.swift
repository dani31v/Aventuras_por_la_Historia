//
//  DrawingViewModal.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI

struct DrawingViewModal: View {
    @Binding var isPresented: Bool
    @Binding var image: UIImage?

    var body: some View {
        NavigationView {
            VStack{
                PencilKitCanvasRepresentable(image: $image)
                
                
            }
                .navigationBarItems(trailing: Button("Guardar") {
                    isPresented = false
                })
                .navigationTitle("Dibuja algo")
        }
    }
    
    
}
