
import SwiftUI

struct EncuentroView: View {

        @EnvironmentObject var viewRouter: ViewRouter
        @Binding var unlockEncuentro2: Bool
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
                                    Text("Hernán Cortés me llevó como prisionero para controlar la ciudad de tenochtitlan. ")
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
                                        Image("Moc")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 300, height: 400)
                                            .clipped()
                                            .offset(x:80, y:25)
                                
                                    
                                        VStack{
                                            Image("Hernan")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 290, height: 370)
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
                    unlockEncuentro2 = true
                    viewRouter.selectedView = "Encuentro2"
                }) {
                    Text("Siguiente")
                        .padding()
                        .background(Color.colorMOC)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    
                    
                    
                }
                    
                    
                    
                }
               
                
                
                
                
                .navigationTitle("🔗 Prisionero de la Ciudad Pérdida")
            }
            
            
        }
        


