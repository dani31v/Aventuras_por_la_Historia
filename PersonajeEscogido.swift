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
            Text("El personaje que elegiste fue: Moctezuma")
                .font(.system(size: 40))
                .foregroundColor(.colorMOC)
            HStack{
                
                Button(action:{showingPopover.toggle()}){
                    Image("Moc")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 500)
                        .clipped()

     
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundStyle(Color("ColorMOC"))
                        
                        VStack{
                            Text("Hola Nativo! Yo soy el líder de los mexicas cuando los españoles llegaron y voy a contarte el lo que sucedió.        Acompañame a esta historia.\n¡Vamos a jugar!")
                                .font(.headline)
                                .padding()
                                .foregroundStyle(Color.white)
                            
                         
                        }
                        .padding()
                    }
                    .frame(width: 250, height: 300)
           
                    .transition(.slide)
                    
                    
                }
        }
            
            Button(action: {
                unlockHernanView = true
                viewRouter.selectedView = "HernanC"
            }) {
                Text("¡Vamos a Jugar!")
                    .padding()
                    .background(Color.colorMOC)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
            
        
    
           }
       }



