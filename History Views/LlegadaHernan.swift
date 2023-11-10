//
//  LlegadaHernan.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI

struct LlegadaHernanView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockHernanView2: Bool
   
    @State private var poppover = false
    var body: some View {
        
        ScrollView{
            VStack{
                HStack{
                    Button(action:{poppover.toggle()}){
                        Image("Moc")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 500)
                            .clipped()
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundStyle(Color.colorMOC)
                            
                            VStack{
                                Text("En el año 1519, llegó un hombre llamado Hernán Cortés a nuestras tierras viajando desde un lugar muy lejano llamado: España")
                                    .font(.headline)
                                    .padding()
                                    .foregroundStyle(Color.white)
                               
                            }
                            .padding()
                        }
                        .frame(width: 300, height: 250)
                        .transition(.slide)
                        
                        
                    }
                }
                
                Button(action: {
                    unlockHernanView2 = true
                    viewRouter.selectedView = "HernanC2"
                }) {
                    Text("Siguiente")
                        .padding()
                        .background(Color.colorMOC)
                        .foregroundColor(.white)
                        .cornerRadius(15)

                    
                }
                
                
            }
            .navigationTitle("⛵️ Un Largo Viaje")
        }
        
        
    }
    
    
    
    
    
}
