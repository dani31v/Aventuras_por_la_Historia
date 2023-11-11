//
//  SadNight3.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct SadNight3: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlocksadnight4: Bool
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
                                    .frame(width:290, height:200)
                                    .foregroundStyle(Color.listBG)
                                
                                
                                VStack{
                                    Text("Hernán Cortés regresó y sitiaron la ciudad de tenochtitlan.")
                                        .font(.system(size:25))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 300, height: 270)
                            
                            .transition(.slide)
                            .offset(x:200,y:-200)
                            
                            
                            
                            .frame(width:300, height: 480)
                            Spacer()
                            
                        }
                        HStack{
                            
                            ZStack{
                                
                                HStack(spacing:10){
                                    ZStack{
                                        Image("Hernan")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 310, height: 410)
                                            .clipped()
                                            .offset(x:-40, y:25)
                                        VStack{
                                            Image("luna")
                                                .resizable()
                                                .padding()
                                                .frame(width: 300, height: 200)
                                                .offset(x:-10, y:-300)
                                            
                                        }
                                        
                                        
                                        
                                    }
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 400, height: 250)
                            
                            .transition(.slide)
                            .offset(x:500,y:0)
                            
                            
                            
                            .frame(width:300, height: 480)
                            Spacer()
                            
                        }
                        
                    }
                    
                    
                    
                }
                ZStack{
                    Button(action: {
                        unlocksadnight4 = true
                        viewRouter.selectedView = "SadNight4"
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
            
            
            
            
            
            .navigationTitle("🛖 El robo de Tenochtitlan")
        }
        
        
    }
    
    
    
    
    
    
    
}
