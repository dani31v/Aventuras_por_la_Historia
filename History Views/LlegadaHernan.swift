//
//  LlegadaHernan.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct LlegadaHernanView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockHernanView2: Bool
    @Environment(\.colorScheme) var colorScheme
    @State private var poppover = false
    var body: some View {
        ZStack{
            (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Image("Moc")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 500)
                        .clipped()
                    
                    
                    ZStack{
                        Spacer()
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width:300, height:350)
                            .foregroundStyle(Color.listBG)
                        
                        VStack{
                            Text("En el año 1519, llegó un hombre llamado Hernán Cortés a nuestras tierras viajando desde un lugar muy lejano llamado: España")
                                .font(.system(size:25))
                                .padding()
                                .foregroundStyle(Color.white)
                            
                        }
                        .padding()
                    }
                    .frame(width: 300, height: 250)
                    
                    
                    
                    
                }
                ZStack{
                    Button(action: {
                        unlockHernanView2 = true
                        viewRouter.selectedView = "HernanC2"
                    }) {
                        Text("Siguiente")
                            .font(.system(size:27))
                            .bold()
                            .padding(.vertical, 20)
                            .frame(width:200)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .cornerRadius(300)
                        
                        
                    }
                    .offset(x:0, y:-10)
                    
                    
                }
                
               
            }
            .navigationTitle("⛵️ Un Largo Viaje")
            
            
            
        }
        
        
        
        
        
    }
}
