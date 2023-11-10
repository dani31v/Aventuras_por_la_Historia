//
//  PersonajeEscogido.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct PersonajeView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var showingPopover = false
    @Binding var unlockHernanView: Bool
    var body: some View {
        VStack{
            Text("El personaje que elegiste fue: \n\t\t\t\t\tMoctezuma")
                .font(.system(size: 40))
                .bold()
                .foregroundColor(.white)
            HStack{
                
                    Image("Moc")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 500)
                        .clipped()

     
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundStyle(Color("ColorMOC"))
                            .frame(width:300, height:350)
                        
                        VStack{
                            Text("Hola Nativo! Yo soy el líder de los mexicas cuando los españoles llegaron y voy a contarte el lo que sucedió. Acompañame a esta historia!")
                                .font(.system(size: 25))
                                .padding()
                                .foregroundStyle(Color.white)
                            
                         
                        }
                        .padding()
                    }
                    .frame(width: 250, height: 300)
           
                    
                    
                
        }
            
            Button(action: {
                unlockHernanView = true
                viewRouter.selectedView = "HernanC"
            }) {
                Text("¡Vamos a Jugar!")
                    .font(.system(size:30))
                    .bold()
                    .padding(.vertical, 20)
                    .frame(width:400)
                    .background(Color.colorMOC)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
            
            .navigationTitle("🧑‍🦲 Tu Personaje")
    
           }
       }



