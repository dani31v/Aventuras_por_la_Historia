//
//  PersonajeEscogido.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct PersonajeView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Environment(\.colorScheme) var colorScheme
    @State private var showingPopover = false
    @Binding var unlockHernanView: Bool
    var body: some View {
        ZStack{
            (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Moctezuma")
                    .font(.system(size: 50))
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
                            .foregroundStyle(Color("List BG"))
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
                        .font(.system(size:26))
                        .bold()
                        .padding(.vertical, 20)
                        .frame(width:350)
                        .background(
                                    LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(.white)
                        .cornerRadius(300)
                }
               
            }
            
            .navigationTitle("El personaje que elegiste fue: ")
            
        }
    }
}


