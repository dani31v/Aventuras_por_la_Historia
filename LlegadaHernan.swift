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
                  
                
                    
                    Text("En el año 1519, un hombre llamado Hernán Cortés y sus amigos viajaron desde España a un lugar lejano llamado México, en América. Llegaron a la costa de Veracruz con barcos grandes. Hernán Cortés era un hombre valiente y quería explorar nuevas tierras.")
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(.top, 45)
                    Image("Hernan")
                        .resizable()
                        .frame(width: 400, height: 400)
                    Text("Cuando llegaron, Cortés hizo amigos con algunos indígenas que no estaban contentos con los gobernantes locales, especialmente un grupo llamado tlaxcaltecas. Estos amigos ayudaron a Cortés y se convirtieron en aliados importantes.")
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(.top, 40)
                    Text("Hubo una batalla en un lugar llamado Centla en marzo de 1519, donde los amigos de Cortés pelearon contra algunos indígenas. Los españoles tenían armas avanzadas y ganaron la batalla. Después de la batalla, recibieron regalos, incluyendo una esclava llamada Malintzin, que también se llamaba La Malinche. Ella fue muy importante para Cortés porque podía hablar diferentes idiomas y le ayudó a entender a la gente de esa tierra nueva.")
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(.top, 40)
                    Text("Así fue como Hernán Cortés y sus amigos comenzaron su aventura en México.")
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(.top, 35)
                    
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
            .navigationTitle("1519: Hernán Cortés y la Conquista de México en la Costa de Veracruz")
            

        }
    
    }


       
