//
//  EscogePersonaje.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct EscogePersonajeView: View {
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
                
                HStack(spacing: 10) { // Añade el modificador spacing para ajustar el espacio entre las columnas
                    VStack{
                        Image("Hernan")
                            .resizable()
                            .frame(width: 300, height: 300)
                        
                        Button(action: {
                            PersonajeView()
                        }) {
                            Text("Hernán Cortés")
                                .padding()
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                        }
                    }
                    
                    VStack{
                        Image("Moc")
                            .resizable()
                            .frame(width: 350, height: 350)
                        
                        Button(action: {
                            // Acción para el botón de Moctezuma
                        }) {
                            Text("Moctezuma")
                                .padding()
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                        }
                    }
                    
                    VStack{
                        Image("Xico")
                            .resizable()
                            .frame(width: 350, height: 350)
                        
                        Button(action: {
                            // Acción para el botón de Xicoténcatl
                        }) {
                            Text("Xicoténcatl")
                                .padding()
                                .background(Color.colorXICO)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                        }
                    }
                }
                
            }
            
        }
    }
    
}
