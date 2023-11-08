//
//  Llegada2.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct Llegada2: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockEncuentro: Bool
    @State private var poppover = false
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                    Button(action:{poppover.toggle()}){
                        Image("Xico")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 500)
                            .offset(x:900, y: 0)
                            .clipped()
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundStyle(Color.accentColor)
                            
                            VStack{
                                Text("")
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
                            viewRouter.selectedView = "LlegadaHernan2"
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
                            viewRouter.selectedView = ""
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
            .navigationTitle("⛵️ Llegada Hernán ")
        }
        
        
    }
    
    
    
    
    
}

