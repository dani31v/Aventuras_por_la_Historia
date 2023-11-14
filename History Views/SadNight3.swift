//
//  SadNight3.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct SadNight3: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlocksadnight4: Bool
    @Environment(\.colorScheme) var colorScheme
    @State private var imageModal = false
    @State private var popover = false
    @State private var drawnImage: UIImage?
    @State private var poppover = false
    @State private var isDrawingMode = false
    
    var body: some View {
        
        ZStack{
            (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                .edgesIgnoringSafeArea(.all)
         HStack{
            VStack{
                HStack(spacing:10){
                    
                    ZStack{
                        VStack{
                            Spacer()
                            
                            
                            Button(action:{poppover.toggle()}){
                                
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
                                    .frame(width:400, height:200)
                                    .foregroundStyle(Color.listBG)
                                
                                
                                VStack{
                                    Text("Hernán Cortés regresó y sitiaron la ciudad de Tenochtitlan.\n¿Y tu como te lo imaginas?. \nAquí te dejamos un espacio para que dejes volar tu imaginación.")
                                        .font(.system(size:25))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 300, height: 370)
                            
                            .transition(.slide)
                            .offset(x:200,y:-100)
                            
                            
                            
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
                                                .offset(x:-10, y:-300)
                                            
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
                        .allowsHitTesting(!isDrawingMode)
                        
                    }
                    
                }
                    
                }
                
                ZStack{
                    HStack{
                        ZStack{
                            Button(action: {
                                unlocksadnight4 = true
                                viewRouter.selectedView = "SadNight4"
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
                                
                                    .padding(.bottom, 20)
                                
                                
                            }
                            .offset(x:-100, y:200)
                        }
                        Spacer()
                        ZStack{
                            
                            Button("✏️ Dibuja aquí") {
                                popover = true
                                
                                isDrawingMode = true
                            }
                            
                            .font(.system(size:24))
                            .bold()
                            .padding(.horizontal, 40)
                            .padding(.vertical, 20)
                            .frame( height: 65)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .cornerRadius(80)
                            
                            .sheet(isPresented: $popover) {
                                DrawingViewModal(isPresented: $popover, image: $drawnImage)
                            }
                            
                            if let drawnImage = drawnImage {
                                Image(uiImage: drawnImage)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 350, height: 600)
                                    .offset(x:-10, y:-90)
                                   
                                    .onTapGesture {
                                        
                                        imageModal = true
                                            
                                    }
                                    .sheet(isPresented: $imageModal) {
                                        ImageViewModal(isPresented: $imageModal, image: drawnImage)
                                            
                                        
                                    }
                                
                            }
                            
                            
                        }
                        .offset(x:-100, y:190)
                            
                            
                         
                            
                        }
                        
                    }
                }
                .onChange(of: popover) { newValue in
                    if !newValue {
                        isDrawingMode = false
                    }
                }
                .navigationTitle("🛖 El robo de Tenochtitlan")
                
            }
            
            
            
            
            
            
            
        }
        
    }
    
    
    

