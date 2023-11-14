//
//  Llegada2.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct Llegada2View: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockHernanView3: Bool
    @Environment(\.colorScheme) var colorScheme
    @State private var isshowingpoppover = false
    var body: some View {
        ZStack{
            (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack(spacing:10){
                    
                    ZStack{
                        VStack{
                            Spacer()
                            
                            Button(action:{}){
                                
                                Image("mocserio")
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
                                    .frame(width:400, height:215)
                                    .foregroundStyle(Color.listBG)
                                
                                VStack{
                                    Text("Cortés se hizo amigo de algunos indígenas especialmente de los tlaxcaltecas, se hicieron aliados y ayudaron a Cortés a derrotarnos. ")
                                        .font(.system(size:25))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 400, height: 250)
                            
                            .transition(.slide)
                
                            
                            .frame(width:500, height: 500)
                            .offset(x:-80,y:-150)
                       
                           
                            
                        }
                        HStack{
                            
                            
                            
                            ZStack{
                                
                                HStack(spacing:10){
                                    ZStack{
                                        Image("Hernan")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 300, height: 400)
                                            .clipped()
                                            .offset(x:80, y:25)
                                        
                                        
                                        
                                        VStack{
                                            Button(action:{(isshowingpoppover.toggle())}){
                                                Image("tristexico")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 300, height: 400)
                                                    .clipped()
                                                    .offset(x:-40, y:25)
                                                
                                            }
                                            .popover(isPresented: $isshowingpoppover) {
                                                
                                                Text("El es Xico: ")
                                                    .background(Color.listBG)
                                                    .padding()
                                     
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
                    ZStack{
                        Button(action: {
                            unlockHernanView3 = true
                            viewRouter.selectedView = "HernanC3"
                        }) {
                            Text("Siguiente")
                                .font(.system(size:27))
                                .bold()
                                .padding(.vertical, 20)
                                .frame(width:200)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))                    .foregroundColor(.white)
                                .cornerRadius(300)
                            
                            
                        }
                        .offset(x:0, y:-10)
                    }
                    
                    
                    
                    
                    .navigationTitle("🤝 Amigos y aliados")
                }
                
                
            }
            
            
        }
    }
    

