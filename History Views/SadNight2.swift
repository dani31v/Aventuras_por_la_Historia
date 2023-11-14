//
//  SadNight2.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct SadNight2: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlocksadnight3: Bool
    @State private var poppover = false
    @State var trueDecision = 0
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        switch trueDecision{
            
        case 2:
            SadNightSi(unlocksadnight3: $unlocksadnight3)
            
            
        case 3:
            
            SadNightNo(unlocksadnight3: $unlocksadnight3)
            
        default:
            ZStack{
                (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                    .edgesIgnoringSafeArea(.all)
                
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
                                        .offset(x:-250, y: -80)
                                    
                                }
                            }
                            .frame(maxHeight: .infinity)
                            
                            HStack{
                                
                                
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .foregroundStyle(Color.listBG)
                                    
                                    VStack{
                                        Text("Quieres revelarte contra los españoles? ")
                                            .font(.system(size:25))
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
                                            Image("tristemoc")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 310, height: 410)
                                                .clipped()
                                                .offset(x:80, y:0)
                                            VStack{
                                                Spacer()
                                                Button(action: {
                                                    trueDecision = 3
                                                    viewRouter.selectedView = "SadNightNo"
                                                }) {
                                                    Text("No")
                                                        .font(.system(size:30))
                                                        .bold()
                                                        .padding(.vertical, 20)
                                                        .frame(width:100)
                                                        .background(
                                                            LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                                                        .foregroundColor(.white)
                                                        .cornerRadius(300)
                                                    
                                                }
                                                .offset(x:80, y:25)
                                            }
                                            
                                            
                                            VStack{
                                                Image("PedroA")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 290, height: 370)
                                                    .clipped()
                                                    .offset(x:-40, y:25)
                                                
                                                VStack{
                                                    Spacer()
                                                    Button(action: {
                                                        trueDecision = 2
                                                        viewRouter.selectedView = "SadNightSi"
                                                    }) {
                                                        Text("Si")
                                                            .font(.system(size:30))
                                                            .bold()
                                                            .padding(.vertical, 20)
                                                            .frame(width:100)
                                                            .background(
                                                                LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                                                            .foregroundColor(.white)
                                                            .cornerRadius(300)
                                                        
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
                
                
                
                
                
                .navigationTitle("🔥 La rebelión")
            }
            
            
        }
    }
    
    
}

struct SadNightSi: View{
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlocksadnight3: Bool
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
                            
                            Button(action:{poppover.toggle()}){
                                
                                Image("tristemoc")
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
                                    .foregroundStyle(Color("List BG"))
                                    .frame(width:360, height:250)
                                
                                VStack{
                                    Text("Los españoles tuvieron que huir de tenochtitlan ya que luchamos contra ellos y muchos de ellos murieron.")
                                        .font(.system(size: 25))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 400, height: 250)
                            
                            .transition(.slide)
                            .offset(x:200,y:-190)
                            
                            
                            
                            .frame(width:300, height: 480)
                            Spacer()
                            
                        }
                        HStack{
                            
                            
                            
                            ZStack{
                                
                                HStack(spacing:10){
                                    ZStack{
                                        Image("Escudos")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 300, height: 400)
                                            .clipped()
                                            .offset(x:80, y:25)
                                        
                                        
                                        
                                        VStack{
                                            Image("trsitemalinche")
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
                ZStack{
                    Button(action: {
                        
                        viewRouter.selectedView = "SadNight3"
                        unlocksadnight3 = true
                    }) {
                        Text("Siguiente")
                            .font(.system(size:26))
                            .bold()
                            .padding(.vertical, 20)
                            .frame(width:350)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .cornerRadius(300)
                        
                        
                        
                    }
                    .offset(x:0, y:-10)
                }
                
                
                
                
                .navigationTitle("🔥 La rebelión")
            }
            
            
        }
    }
        
        
        
        
    }
    
struct SadNightNo: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlocksadnight3: Bool
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
                                    .foregroundStyle(Color("List BG"))
                                    .frame(width:360, height:250)
                                
                                VStack{
                                    Text("Muchos españoles murieron en la batalla y tuvieron que huir")
                                        .font(.system(size: 25))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 400, height: 250)
                            
                            .transition(.slide)
                            .offset(x:200,y:-187)
                            
                            
                            
                            .frame(width:300, height: 480)
                            Spacer()
                            
                        }
                        HStack{
                            
                            
                            
                            ZStack{
                                
                                HStack(spacing:10){
                                    ZStack{
                                      
                                        
                                        VStack{
                                            Image("Malinche")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 300, height: 400)
                                                .clipped()
                                                .offset(x:-40, y:25)
                                            
                                        }
                                        VStack{
                                            Image("tristec")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 400, height: 500)
                                                .clipped()
                                                .offset(x:60, y:25)
                                            
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
                        unlocksadnight3 = true
                        viewRouter.selectedView = "SadNight3"
                    }) {
                        Text("Siguiente")
                            .font(.system(size:26))
                            .bold()
                            .padding(.vertical, 20)
                            .frame(width:350)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .cornerRadius(300)
                        
                        
                        
                    }
                    .offset(x:0, y:-10)
                }
                
                
                
                
                .navigationTitle("🔥 La rebelión")
            }
            
            
        }
        
        
        
        
        
    }
}



