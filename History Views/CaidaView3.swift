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
                @State private var poppover = false
                    var body: some View {
                   
                    VStack{
                        HStack(spacing:10){
                
                                    ZStack{
                                        VStack{
                                            Spacer()
                                            
                                            Button(action:{poppover.toggle()}){
                                                
                                                Image("Fantasma")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 450, height: 550)
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
                                                    Text("Los españoles lograron entrar a la ciudad de tenochtitlan el 13 de Agosto del 1521.")
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
                                                        Image("PedroA")
                                                            .resizable()
                                                            .scaledToFill()
                                                            .frame(width: 310, height: 410)
                                                            .clipped()
                                                            .offset(x:80, y:25)
                                                        VStack{
                                                            Image("Hernan")
                                                                .resizable()
                                                                .scaledToFill()
                                                                .frame(width: 310, height: 410)
                                                                .clipped()
                                                                .offset(x:-100, y:25)

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
                                    Button(action: {
                                        unlockcaida4 = true
                                        viewRouter.selectedView = "Caida4"
                                    }) {
                                        Text("Siguiente")
                                            .padding()
                                            .background(Color.colorMOC)
                                            .foregroundColor(.white)
                                            .cornerRadius(15)
                                        
                                        
                                        
                                    }
                                        
                                        
                                        
                                    }
                                   
                                    
                                    
                                    
                                    
                                    .navigationTitle("⚠️ Tenochtitlan se cae")
                                }
                                
                                
                            }
                            






