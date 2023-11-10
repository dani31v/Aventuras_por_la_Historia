
//  Llegada2.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct Llegada3View: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockHernanView4: Bool
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
                                Text("Al llegar Hernán Cortés, hubo una batalla. ¿Quieres entrar?")
                                    .font(.headline)
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
                                    Image("Malinche")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300, height: 400)
                                        .clipped()
                                        .offset(x:80, y:25)
                            
                                        VStack{
                                            Spacer()
                                                .frame(
                                                height:400)
                                            Button(action: {
                                                unlockHernanView4 = true
                                                viewRouter.selectedView = "HernanC4"
                                               
                                            }) {
                                                Text("No")
                                                    .padding()
                                                    .background(Color.colorMOC)
                                                    .foregroundColor(.white)
                                                    .cornerRadius(15)
                                                
                                                
                                            }
                                            .offset(x:80, y:25)
                                        }
                    
                                    
                                    VStack{
                                        Image("Hernan")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 290, height: 370)
                                            .clipped()
                                            .offset(x:-40, y:25)
                                        VStack{
                                            Spacer()
                                            Button(action: {
                                                print(viewRouter.selectedView)
                                            
                                                viewRouter.selectedViewDecision = "llegadasi"
                                                
                                                print(viewRouter.selectedViewDecision)
                                            }) {
                                                Text("Si")
                                                    .padding()
                                                    .background(Color.colorMOC)
                                                    .foregroundColor(.white)
                                                    .cornerRadius(15)
   
                                            }
                                            .offset(x:-40, y:25)
                                        }
                                        
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
                
                
                
            }
           
            
            
            
            
            .navigationTitle("⛵️ Llegó Hernán Cortés")
        }
        
        
    }
    