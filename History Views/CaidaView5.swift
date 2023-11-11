//
//  CaidaView5.swift
//  book
//
//  Created by Daniela Valencia on 09/11/23.
//

import SwiftUI

struct CaidaView5: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @Environment(\.colorScheme) var colorScheme
    @State var trueDecision = false
    @State private var poppover = false
    var body: some View {
        if !trueDecision {
            ZStack{
                (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                    .edgesIgnoringSafeArea(.all)
                
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
                                        .frame(width:300, height:225)
                                        .foregroundStyle(Color.listBG)
                                    
                                    VStack{
                                        Text("Esto marcó el fin de mi imperio, el imperio azteca y el comienzo de una nueva época con los españoles al mando de la tierra, de la religión y de su forma de vivir. ")
                                            .font(.system(size:21))
                                            .padding()
                                            .foregroundStyle(Color.white)
                                        
                                    }
                                }
                                .padding()
                                
                                .frame(width: 300, height: 270)
                                
                                .transition(.slide)
                                .offset(x:200,y:-180)
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
                    
                    
                    ZStack{
                        Button(action: {
                            trueDecision = true
                            viewRouter.showhistory = false
                        }) {
                            Text("FIN DE LA HISTORIA.")
                                .font(.system(size:23))
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
                
                
                
                
                
                .navigationTitle("✨ El final de la historia")
            }
        } else {
            ContentWorldView()
        }
        
        
    }
    

}


