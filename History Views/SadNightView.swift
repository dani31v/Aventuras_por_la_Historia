//
//  SadNightView.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI

struct SadNightView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlocksadnight2: Bool
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
                                Text("Pedro Alvarado atacó a mi pueblo durante una ceremonia, muchos indigenas murieron.")
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
                                    VStack{
                                        Image("luna")
                                            .resizable()
                                            .padding()
                                            .frame(width: 300, height: 200)
                                        Spacer()
                                            .frame(height: 500)
                                    }
                                    Image("PedroA")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 310, height: 410)
                                        .clipped()
                                        .offset(x:-40, y:25)
                                    Image("Lanzas")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 310, height: 410)
                                        .clipped()
                                        .offset(x:50, y:30)
                            
                              
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
                unlocksadnight2 = true
                viewRouter.selectedView = "SadNight2"
            }) {
                Text("Siguiente")
                    .padding()
                    .background(Color.colorMOC)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
                
                
            }
                
                
                
            }
           
            
            
            
            
            .navigationTitle("🌙 La noche triste")
        }
        
        
    }
    





