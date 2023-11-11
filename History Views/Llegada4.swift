
//  Llegada2.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct Llegada4View: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockEncuentro: Bool
    @Environment(\.colorScheme) var colorScheme
    @State private var poppover = false
    var body: some View {
        ZStack{
            (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack(spacing:10){
                    
                    ZStack{
                        VStack{
                            Spacer()
                            
                            Button(action:{poppover.toggle()}){
                                
                                Image("Moc")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 500)
                                    .clipped()
                                Spacer()
                                    .frame(height:10)
                                
                            }
                        }
                        .frame(maxHeight: .infinity)
                        
                        HStack{
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width:300, height:250)
                                    .foregroundStyle(Color.listBG)
                                
                                VStack{
                                    Text("Después de la batalla les dimos regalos y a la Malinche, ella fue muy importante para Hernán Cortés ya que sabía comunicarse con los españoles y con nosotros los nativos. ")
                                        .font(.system(size:23))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 300, height: 250)
                            
                            .transition(.slide)
                            .offset(x:200,y:-175)
   
                            .frame(width:300, height: 480)
                            Spacer()
                            
                        }
                        HStack{
                            
                            ZStack{
                                
                                HStack(spacing:10){
                                    ZStack{
                                        Image("Malinche")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 300, height: 400)
                                            .clipped()
                                            .offset(x:100, y:25)
                                        
                                        Text("❤️")
                                            .font(.system(size: 80))
                                            .frame(width: 200, height: 300)
                                            .offset(x:30, y:-200)
   
                                        
                                        VStack{
                                            Image("Hernan")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 290, height: 370)
                                                .clipped()
                                                .offset(x:-40, y:25)
                                            
                                            
                                        }
                                    }
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            .frame(width: 200, height: 250)
                            
                            .transition(.slide)
                            .offset(x:200,y:0)
                            
                            
                            
                            .frame(width:300, height: 480)
                           
                            
                        }
                        
                    }
                    
                    
                    
                }
                Button(action: {
                    unlockEncuentro = true
                    viewRouter.selectedView = "Encuentro"
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
            
            
            
            
            
            .navigationTitle("❤️ Un amor puro")
        }
        
        
    }
    
    
}
