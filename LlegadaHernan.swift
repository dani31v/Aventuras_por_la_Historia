//
//  LlegadaHernan.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct LlegadaHernanView: View {
        var body: some View {
            
            ScrollView{
                VStack {
                    Text("1519: Hernán Cortés y la Conquista de México en la Costa de Veracruz")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.top, 50)
                
                    
                    Text("En el año 1519, un hombre llamado Hernán Cortés y sus amigos viajaron desde España a un lugar lejano llamado México, en América. Llegaron a la costa de Veracruz con barcos grandes. Hernán Cortés era un hombre valiente y quería explorar nuevas tierras.")
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(.top, 45)
                    Image("Hernan")
                        .resizable()
                        .frame(width: 400, height: 400)
                    
                    Button(action: {
    
                    }) {
                        Text("Next")
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color .accentColor, lineWidth: 3))
                            .frame(width:100, height: 200)
                    }

                    Spacer()
                }
            }
            

        }
    
    }


       
