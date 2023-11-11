import SwiftUI
import GameKit
struct GameCenterView: View {
    
    let testNotes = myStory()
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var isContentViewPresented = true
    
    var body: some View {
        
        ZStack {
            Image("FONDOINICIAL")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            
            
                HStack{
                    
                    VStack{
                        Text ("¡Bienvenidos!")
                            .font(.system(size: 42))
                            .bold()
                            .foregroundColor(.white)
                            .frame(width:260, height:50, alignment:.top)
                        
                        Spacer()
                            .frame(height:650)
                    
                        
                    }
                    VStack{
                        Spacer()
                        Image ("Logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 500, height:500 )
                            .clipped()
                        Spacer(minLength: 0)
                    }
                    VStack{
                        ZStack{
                            Spacer(minLength: 0)
                            Button("Show Game Center") {
                                authViewModel.authenticate()
                            }
                            
                            .font(.system(size:20))
                            .bold()
                            .padding()
                            .frame(width:300)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.coloBut1, Color.colorBut2]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .cornerRadius(300)
                          
                            
                            
                        }
                        .offset(x:55, y:300)
                    }
                        
                    }
            
            
        }
        }
        
    }
    
    
    
    
    struct GameCenterViewController: UIViewControllerRepresentable {
        
        @Binding var isGameCenterPresented: Bool
        
        func makeUIViewController(context: Context) -> GKGameCenterViewController {
            let gameCenterViewController = GKGameCenterViewController()
            gameCenterViewController.gameCenterDelegate = context.coordinator
            return gameCenterViewController
        }
        
        func updateUIViewController(_ uiViewController: GKGameCenterViewController, context: Context) {
            
        }
        
        func makeCoordinator() -> Coordinator {
            Coordinator(self)
        }
        
        class Coordinator: NSObject, GKGameCenterControllerDelegate {
            var parent: GameCenterViewController
            
            init(_ gameCenterViewController: GameCenterViewController) {
                self.parent = gameCenterViewController
            }
            
            func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController) {
                
                parent.isGameCenterPresented = false
                
                
            }
        }
    }
    struct GameCenterView_Previews: PreviewProvider {
        static var previews: some View {
            GameCenterView()
        }
        
    }
    

