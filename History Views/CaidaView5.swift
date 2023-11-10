//
//  CaidaView5.swift
//  book
//
//  Created by Daniela Valencia on 09/11/23.
//

import SwiftUI

struct CaidaView5: View {

                    @EnvironmentObject var viewRouter: ViewRouter
                    
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
                                                        Text("Esto marcó el fin de mi imperio, el imperio azteca y el comienzo de una nueva época con los españoles al mando de la tierra, de la religión y de su forma de vivir. ")
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
                                                            Image("tristexico")
                                                                .resizable()
                                                                .scaledToFill()
                                                                .frame(width: 310, height: 410)
                                                                .clipped()
                                                                .offset(x:-40, y:25)
                                                            VStack{
                                                                Image("PedroA")
                                                                    .resizable()
                                                                    .scaledToFill()
                                                                    .frame(width: 250, height: 390)
                                                                    .clipped()
                                                                    .offset(x:-170, y:25)
                                                            }
                                                            VStack{
                                                                Image("Hernan")
                                                                    .resizable()
                                                                    .scaledToFill()
                                                                    .frame(width: 310, height: 410)
                                                                    .clipped()
                                                                    .offset(x:70, y:25)
                                                            }
                                                            VStack{
                                                                
                                                                    Image("tristec")
                                                                        .resizable()
                                                                        .scaledToFill()
                                                                        .frame(width: 310, height: 410)
                                                                        .clipped()
                                                                        .offset(x:200, y:25)
                                                                
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
                                        }) {
                                            Text("FIN DE LA HISTORIA.")
                                                .padding()
                                                .background(Color.colorMOC)
                                                .foregroundColor(.white)
                                                .cornerRadius(15)
                                            
                                            
                                            
                                        }
                                           
                                            
                                            
                                        }
                                       
                                        
                                        
                                        
                                        
                                        .navigationTitle("✨ El final de la hisotria")
                                    }
                                    
                                    
                                }
                                






