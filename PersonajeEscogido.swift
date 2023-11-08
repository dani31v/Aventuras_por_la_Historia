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
                            Text("Hola Nativo! Yo soy el líder de los mexicas cuando los españoles llegaron y voy a contarte el lo que sucedió. Cuando los españoles llegaron, yo traté de ser amable con su líder, Cortés. Le di regalos y lo invitamos a quedarse en nuestra ciudad. Pero después, los españoles me capturaron y me llevaron prisionero. ¿Quieres saber que más paso?                                     Acompañame a esta historia y vamos a jugar!")
                                .font(.headline)
                                .padding()
                                .foregroundStyle(Color.white)
                            
                            Button(action:{showingPopover.toggle()}){
                                Text("Cerrar")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.semibold)
                            }
                        }
                        .padding()
                    }
                    .frame(width: 400, height: 350)
                    .opacity(showingPopover ? 1 : 0)
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



