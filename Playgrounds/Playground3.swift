//
//  Playground3.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI


struct Playground3: View {
    @State private var imageModal = false
    @State private var popover = false
    @State private var drawnImage: UIImage?
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                    
                }
                
                Button(action: {
                    
                }) {
                    Text("Hernán decidirá hacerse amigo de ellos")
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    
                    
                }
                Button(action: {
                    
                }) {
                    Text("Decidirá seguir solo su camino...")
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    
                    
                }
                
                
                Button("Dibujar") {
                    popover = true
                }
                
                .sheet(isPresented: $popover) {
                    DrawingViewModal(isPresented: $popover, image: $drawnImage)
                }
                if let drawnImage = drawnImage {
                    Image(uiImage: drawnImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, height: 500)
                        .onTapGesture {
                            imageModal = true
                        }
                        .sheet(isPresented: $imageModal) {
                            ImageViewModal(isPresented: $imageModal, image: drawnImage)
                        }
                }
                
                
                
                
                
                
                
            }
            .navigationTitle("⚔️ Un Encuentro Inesperado")
            
        }
        
        
    }
}


