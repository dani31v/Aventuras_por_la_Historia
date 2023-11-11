//
//  Encuentro2View.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct Encuentro2View: View {

            @EnvironmentObject var viewRouter: ViewRouter
            @Binding var unlockSadNightView: Bool
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
                                            Text("Una vez que me tenía como prisionero, Hernán Cortés tuvo que salir de tenochtitlan y dejo al mando a Pedro de Alvarado.")
                                                .font(.system(size:25))
                                                .padding()
                                                .foregroundStyle(Color.white)
                                      
                                            
                                            
                                            
                                        }
                                    }
                                        .padding()
                                        
                                        .frame(width: 300, height: 270)
                                        
                                        .transition(.slide)
                                        .offset(x:200,y:-190)
                    
                                        
                                    
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
                                                    .frame(width: 290, height: 370)
                                                    .clipped()
                                                    .offset(x:80, y:25)
                                        
                                            
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
                                unlockSadNightView = true
                                viewRouter.selectedView = "SadNight"
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
                   
                    
                    
                    
                    
                        .navigationTitle("🪖 Nuevo Líder")
        
                    }
                
                
                }
}




