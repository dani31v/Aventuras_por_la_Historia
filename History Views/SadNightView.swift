//
//  SadNightView.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI

struct SadNightView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockCaida: Bool
    @State private var poppover = false
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                  
                }
                
                Button(action: {
                    viewRouter.selectedView = "LlegadaHernan"
                }) {
                    Text("Hernán decidirá hacerse amigo de ellos")
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)

                    
                }
                Button(action: {
                    viewRouter.selectedView = "LlegadaHernan"
                }) {
                    Text("Decidirá seguir solo su camino...")
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)

                    
                }
                
                
                Button(action: {
                    unlockCaida = true
                    viewRouter.selectedView = "Caida"
                }) {
                    Text("Siguiente")
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)

                    
                }
                
                
            }
            .navigationTitle("🌙 La noche triste")
        }
        
        
    }
}

