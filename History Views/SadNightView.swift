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
                            
                                
                                Image("Moc")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 500)
                                    .clipped()
                                Spacer()
                                    .frame(height:10)
                                    
                                
                            
                        }
                        .offset(x:300, y:25)
                        .frame(maxHeight: .infinity)
                        
                        HStack{
                            
                            
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width:300, height:200)
                                    .foregroundStyle(Color.listBG)
                                
                                VStack{
                                    Text("Pedro Alvarado atacó a mi pueblo durante una ceremonia, muchos indigenas murieron.")
                                        .font(.system(size:25))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 300, height: 270)
                            .offset(x:300,y:-100)
                            
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
                                            .offset(x:-500, y:25)
                                        Image("Lanzas")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 310, height: 410)
                                            .clipped()
                                            .offset(x:-550, y:30)
                                        
                                        
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
                        unlocksadnight2 = true
                        viewRouter.selectedView = "SadNight2"
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
            
            
            
            
            
            .navigationTitle("🌙 La noche triste")
        }
        
        
    }
}





