//
//  EscogePersonaje.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct EscogePersonajeView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Environment(\.colorScheme) var colorScheme
    @Binding var unlockPersonajeView: Bool
    var body: some View {
        
        ZStack{
            (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical,showsIndicators:false){
                VStack{
                    Spacer()
                    Text("PERSONAJES")
                        .bold()
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                    
                }
                
                
                ScrollView(){
                    
                    HStack(spacing: 10) {
                        VStack{
                            Image("Hernan")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                
                            }) {
                                Text("Hernán Cortés")
                                    .font(.system(size:20))
                                    .padding()
                                    .frame(width:200)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(300)
                            }
                            .disabled(true)
                            .opacity(0.5)
                            
                            Image("Malinche")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                
                            }) {
                                Text("Malinche")
                                    .font(.system(size:20))
                                    .padding()
                                    .frame(width:200)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(300)
                            }
                            .disabled(true)
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
                                    .font(.system(size:20))
                                    .padding()
                                    .frame(width:200)
                                    .background(
                                        LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                                    .foregroundColor(.white)
                                    .cornerRadius(300)
                                
                            }
                            
                            
                            Image("PedroA")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                
                            }) {
                                Text("Pedro Alvarado")
                                    .font(.system(size:20))
                                    .padding()
                                    .frame(width:200)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(300)
                                
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
                                    .font(.system(size:20))
                                    .padding()
                                    .frame(width:200)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(300)
                            }
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
                            
                            Image("CUI")
                                .resizable()
                                .frame(width: 300, height: 300)
                            
                            Button(action: {
                                
                            }) {
                                Text("Cuitlahuac")
                                    .font(.system(size:20))
                                    .padding()
                                    .frame(width:200)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(300)
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
}
