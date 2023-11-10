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
                                        Text("Una vez que me tenía como prisionero, Hernán Cortés tuvo que salir de tenochtitlan y dejo al mando a Pedro de Alvarado.")
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
                    Button(action: {
                        unlockSadNightView = true
                        viewRouter.selectedView = "SadNight"
                    }) {
                        Text("Siguiente")
                            .padding()
                            .background(Color.colorMOC)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        
                        
                        
                    }
                        
                        
                        
                    }
                   
                    
                    
                    
                    
                    .navigationTitle("🪖 Nuevo Líder")
        
                }
                
                
            }
            




