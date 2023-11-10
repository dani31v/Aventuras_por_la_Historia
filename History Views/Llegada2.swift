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
                                Text("Cortés se hizo amigo de algunos indígenas especialmente de los tlaxcaltecas, se hicieron aliados y ayudaron a Cortés a derrotarnos. ")
                                    .font(.headline)
                                    .padding()
                                    .foregroundStyle(Color.white)
                          
                                
                                
                                
                            }
                        }
                            .padding()
                            
                            .frame(width: 400, height: 250)
                            
                            .transition(.slide)
                            .offset(x:200,y:-200)
        
                            
                        
                        .frame(width:300, height: 480)
                        Spacer()
                        
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
                                        Image("Xico")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 300, height: 400)
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
                unlockHernanView3 = true
                viewRouter.selectedView = "HernanC3"
            }) {
                Text("Siguiente")
                    .padding()
                    .background(Color.colorMOC)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
                
                
            }
            
            
            
            
            .navigationTitle("🤝 Amigos y aliados")
        }
        
        
    }
    
    
    
    
    
}


