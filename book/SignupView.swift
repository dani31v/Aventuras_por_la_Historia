import SwiftUI
import GameKit
struct GameCenterView: View {
    
    let testNotes = myStory()
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var isContentViewPresented = true
    
    var body: some View {
        
        ZStack {
            Image("fondo") // Reemplaza "Fondo" con el nombre de tu imagen
                .resizable()
                .opacity(0.1)
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
            
            
                HStack{
                    
                    VStack{
                        Text ("¡Bienvenidos!")
                            .font(.system(size: 42))
                            .bold()
                            .foregroundColor(.colorMOC)
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
                        Spacer(minLength: 0)
                        Button("Show Game Center") {
                            authViewModel.authenticate()
                        }
                        
                        .padding()
                        .background(Color.colorMOC)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .frame(width: 260, height: 50)
                        Spacer()
                            .frame(height:50)
                        
                        
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
    

