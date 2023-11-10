//
//  SadNight4.swift
//  book
//
//  Created by Daniela Valencia on 09/11/23.
//

import SwiftUI

struct SadNight4: View {
 
            @EnvironmentObject var viewRouter: ViewRouter
            @Binding var unlockcaida: Bool
            @State private var poppover = false
            var body: some View {
                
                    
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
                                        .foregroundStyle(Color.colorMOC)
                                        
                                    VStack{
                                        Text("Fue una época muy difícil ya que la gente luchaba por ser libres, muchas vidas se perdieron, una de esas la mía.")
                                            .font(.headline)
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
                                            Image("Fantasma")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 450, height: 510)
                                                .clipped()
                                                .offset(x:0, y:25)
                          
                                          
                                        }
                                    }
                                }
                                    .padding()
                                    
                                    .frame(width: 400, height: 250)
                                
                                    .transition(.slide)
                                    .offset(x:500,y:0)
                                    .frame(width:300, height: 480)
                                    Spacer()
                                    
                                ZStack{
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
                          
                               
                                
                            }
                        Button(action: {
                            unlockcaida = true
                            viewRouter.selectedView = "Caida"
                        }) {
                            Text("Siguiente")
                                .padding()
                                .background(Color.colorMOC)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                            
                            
                            
                        }
                            
                            
                            
                        }
                       
                        
                        
                        
                        
                        .navigationTitle("🕊️ La despedida de Moctezuma")
                    }
                    
                    
                }
                





