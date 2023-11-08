//
//  LlegadaHernan.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct LlegadaHernanView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockEncuentro: Bool
    @State private var poppover = false
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                    Button(action:{poppover.toggle()}){
                        Image("Moc")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 500)
                            .clipped()
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundStyle(Color.accentColor)
                            
                            VStack{
                                Text("En el año 1519, llegó un hombre llamado Hernán Cortés a nuestras tierras viajando desde un lugar muy lejano llamado: España")
                                    .font(.headline)
                                    .padding()
                                    .foregroundStyle(Color.white)
                                
                                Button(action:{poppover.toggle()}){
                                    Text("Cerrar")
                                        .foregroundStyle(Color.white)
                                        .fontWeight(.semibold)
                                }
                            }
                            .padding()
                        }
                        .frame(width: 300, height: 250)
                        .opacity(poppover ? 1 : 0)
                        .transition(.slide)
                        
                        
                    }
                }
                HStack{
                    VStack{
                        Button(action: {
                            viewRouter.selectedView = "Llegada2"
                        }) {
                            Text("Hernán decidirá hacer amigos ")
                                .padding()
                                .background(Color.accentColor)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                            
                            
                        }
                    }
                    VStack{
                        Button(action: {
                            viewRouter.selectedView = "Llegada2"
                        }) {
                            Text("Decidirá seguir solo su camino...")
                                .padding()
                                .background(Color.accentColor)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                            
                            
                        }
                    }
                    
                }
                Button(action: {
                    unlockEncuentro = true
                    viewRouter.selectedView = "Encuentro"
                }) {
                    Text("Siguiente")
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)

                    
                }
                
                
            }
            .navigationTitle("⛵️ Llegó Hernán Cortés")
        }
        
        
    }
    
    
    
    
    
}
