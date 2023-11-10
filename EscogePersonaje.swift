//
//  EscogePersonaje.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct EscogePersonajeView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockPersonajeView: Bool
    var body: some View {
        ScrollView(.vertical,showsIndicators:false){
            VStack{
                Spacer()
                Text("PERSONAJES")
                    .bold()
                    .font(.system(size: 40))
                    .foregroundColor(.accentColor)
                
            }
            
            
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: 10) {
                        VStack{
                            Image("Hernan")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                
                            }) {
                                Text("Hernán Cortés")
                                    .padding()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                            }
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            
                            Image("Malinche")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                
                            }) {
                                Text("Malinche")
                                    .padding()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                            }
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                        }
                        
                        VStack{
                            Image("Moc")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                        unlockPersonajeView = true
                                        viewRouter.selectedView = "PersonajeView"
                                    }) {
                                        Text("Moctezuma")
                                            .padding()
                                            .background(Color.colorMOC)
                                            .foregroundColor(.white)
                                            .cornerRadius(15)

                                    }
                            
                          
                            Image("PedroA")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                
                            }) {
                                Text("Pedro Alvarado")
                                    .padding()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)

                            }
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                        }
                        
                        VStack{
                            Image("Xico")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                // Acción para el botón de Xicoténcatl
                            }) {
                                Text("Xicoténcatl")
                                    .padding()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                            }
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            
                            Image("CUI")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                
                            }) {
                                Text("Cuitlahuac")
                                    .padding()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                            }
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                        }
                        
                    }
                    
                }
                
            }
            .navigationTitle("Escoge a tu personaje")
        }
        
    }
