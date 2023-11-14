
import SwiftUI

struct EncuentroView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var unlockEncuentro2: Bool
    @Environment(\.colorScheme) var colorScheme
    @State private var poppover = false
    var body: some View {
        ZStack{
            (colorScheme == .dark ? Color("ColorFondo") : Color("ColorFondo"))
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
                Spacer()
                LottieView(url: Bundle.main.url(forResource: "Piramide_Sol", withExtension: "lottie")!)
                    .ignoresSafeArea()
            }
                
            VStack{
                HStack(spacing:10){
                    
                    ZStack{
                        VStack{
                            Spacer()
                                .frame(height:200)
                            Button(action:{poppover.toggle()}){
                               
                                Image("tristemoc")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 500)
                                    .clipped()
                                    .offset(x:-300, y: 85)
                                
                            }
                        }
                        .frame(maxHeight: .infinity)
                        
                        HStack{
                            
                            ZStack{
                                Spacer()
                                   
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width:300, height:200)
                                    .foregroundStyle(Color.listBG)
                                
                                VStack{
                                    Text("Hernán Cortés me llevó como prisionero para controlar la ciudad de tenochtitlan. ")
                                        .font(.system(size:25))
                                        .padding()
                                        .foregroundStyle(Color.white)
                                    
                                    
                                    
                                    
                                }
                            }
                            .padding()
                            
                            .frame(width: 300, height: 270)
                            
                            .transition(.slide)
                            .offset(x:200,y:-100)
                            
                            
                            
                            .frame(width:300, height: 250)
                            Spacer()
                            
                        }
                        HStack{
                            
                            ZStack{
                                
                            
                                    
                                    
                                
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
                        unlockEncuentro2 = true
                        viewRouter.selectedView = "Encuentro2"
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
                    .offset(x:0, y:-30)
                }
            
            }

            
            
            .navigationTitle("🔗 Prisionero de la Ciudad Pérdida")
        }
        
        
    }
}


