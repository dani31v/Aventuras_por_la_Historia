//
//  CaidaView3.swift
//  book
//
//  Created by Daniela Valencia on 09/11/23.
//

import SwiftUI

struct CaidaView3: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockcaida4: Bool
    @Environment(\.colorScheme) var colorScheme
    @State private var poppover = false
    var body: some View {
        
        ZStack{
            (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                LottieView(url: Bundle.main.url(forResource: "Comp_6", withExtension: "lottie")!)
                    .edgesIgnoringSafeArea(.all)
            }
            
            VStack{
                HStack(spacing:10){
                    
                    ZStack{
                        VStack{
                            Spacer()
                            
                            Button(action:{poppover.toggle()}){
                                
                                Image("fantasmatriste")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 450, height: 550)
                                    .clipped()
                                    .offset(x:-300, y: 160)
                                
                            }
                        }
                        .frame(maxHeight: .infinity)
                        
                        HStack{
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width:300, height:225)
                                    .foregroundStyle(Color.listBG)
                                
                                VStack{
                                    Text("Los españoles lograron entrar a la ciudad de tenochtitlan el 13 de Agosto del 1521.")
                                        .font(.system(size: 21))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 300, height: 270)
                            
                            .transition(.slide)
                            .offset(x:50,y:-90)
                            .frame(width:300, height: 480)
                            Spacer()
                            
                        }
                        HStack{
                            ZStack{
                                HStack(spacing:10){
                                    ZStack{
                                      
                                        Image("PedroA")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 300, height: 400)
                                            .clipped()
                                            .offset(x:80, y:15)
                                        VStack{
                                            Image("Hernan")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 300, height: 400)
                                                .clipped()
                                                .offset(x:-100, y:15)
                                            
                                        }
                                        
                                        
                                    }
                                }
                            }
                            .padding()
                            
                            .frame(width: 400, height: 250)
                            
                            .transition(.slide)
                            .offset(x:500,y:190)
                            .frame(width:300, height: 480)
                            Spacer()
                            
                        }
                        
                    }
                    
                    
                    
                }
                ZStack{
                    Button(action: {
                        unlockcaida4 = true
                        viewRouter.selectedView = "Caida4"
                    }) {
                        Text("Siguiente")
                            .font(.system(size:27))
                            .bold()
                            .padding(.vertical, 20)
                            .frame(width:300)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .cornerRadius(300)
                        
                        
                    }
                    .offset(x:0, y:-10)
                    
                    
                    
                }
                
                
                
                
                
                .navigationTitle("🛕 La invasión a la ciudad")
            }
            
            
        }
        
        
        
        
        
        
        
        
    }
}
