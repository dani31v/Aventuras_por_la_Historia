
//  Llegada2.swift
//  book
//
//  Created by Daniela Valencia on 08/11/23.
//

import SwiftUI

struct Llegada3View: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockHernanView4: Bool
    @Environment(\.colorScheme) var colorScheme
    @State private var poppover = false
    @State var trueDecision = 0
    
    
    
    var body: some View {
        
        switch trueDecision{
       
        case 2:
            LlegadaSiView(unlockHernanView4: $unlockHernanView4)
        
        
        case 3:
        
            LlegadaNoView(unlockHernanView4: $unlockHernanView4)
            
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
                                        .foregroundStyle(Color.listBG)
                                    
                                    VStack{
                                        Text("Al llegar Hernán Cortés, hubo una batalla. ¿Quieres entrar?")
                                            .font(.system(size:25))
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
                                            Image("Escudos")
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
                                                    trueDecision = 3
                                                    viewRouter.selectedView = "llegadano"
                                                    
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
                                                        
                                                        print(trueDecision = 2)
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
                
                
                
                
                
                .navigationTitle("🛡️ Batalla Centla")
            }
        
           
        
        
    }
    }
    
}





struct LlegadaSiView: View {
  
        @EnvironmentObject var viewRouter: ViewRouter
        @Binding var unlockHernanView4: Bool
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
                                    Text("Aunque fuimos participes de la batalla, los españoles nos ganaron ")
                                        .font(.system(size: 25))
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
                                        Image("Lanzas")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 300, height: 400)
                                            .clipped()
                                            .offset(x:80, y:25)
                                        
                                        
                                        
                                        VStack{
                                            Image("tristec")
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
                        
                        viewRouter.selectedView = "HernanC4"
                        unlockHernanView4 = true
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
                
                
                
                
                .navigationTitle("⛵️ Llegó Hernán Cortés")
            }
            
            
        }
    }
        
        
        
        
    }
    
struct LlegadaNoView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockHernanView4: Bool
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
                                    Text("Decidimos ser pacíficos pero no todos son como nosotros y tuvimos una batalla contra los españoles aunque ellos ganaron")
                                        .font(.system(size: 25))
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
                                            Image("tristec")
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
                        unlockHernanView4 = true
                        viewRouter.selectedView = "HernanC4"
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
                
                
                
                
                .navigationTitle("⛵️ Llegó Hernán Cortés")
            }
            
            
        }
        
        
        
        
        
    }
}


