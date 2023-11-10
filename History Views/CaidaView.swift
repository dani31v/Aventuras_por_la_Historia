//
//  Caidaview.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI

struct CaidaView: View {
   
     
        @EnvironmentObject var viewRouter: ViewRouter
        @Binding var unlockcaida2: Bool
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
                                            Text("A el pueblo le empezó a dar viruela ya que los españoles la habían traído de sus tierras.")
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
                                                Image("VIRUELA1")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 310, height: 410)
                                                    .clipped()
                                                    .offset(x:20, y:25)
                                                VStack{
                                                    Image("Viruela2")
                                                        .resizable()
                                                        .scaledToFill()
                                                        .frame(width: 310, height: 410)
                                                        .clipped()
                                                        .offset(x:-100, y:25)
                                                    
                                                }
                                                
                                                VStack{
                                                    Image("Viruela3")
                                                        .resizable()
                                                        .scaledToFill()
                                                        .frame(width: 310, height: 410)
                                                        .clipped()
                                                        .offset(x:170, y:25)
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
                                unlockcaida2 = true
                                viewRouter.selectedView = "Caida2"
                            }) {
                                Text("Siguiente")
                                    .padding()
                                    .background(Color.colorMOC)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                
                                
                                
                            }
                                
                                
                                
                            }
                           
                            
                            
                            
                            
                            .navigationTitle("🤒 La primera pandemia")
                        }
                        
                        
                    }
                    






