//
//  Caidaview.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI

struct CaidaView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
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
                
               
                
                
            }
            .navigationTitle("🔥 La caída de Tenochtitlan")
        }
        
        
    }
}

