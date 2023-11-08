//
//  SignupView.swift
//  book
//
//  Created by Daniela Valencia on 07/11/23.
//

import SwiftUI
import GameKit

struct GameCenterView: View {
    
    let testNotes = myStory()
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var isContentViewPresented = false
    
    var body: some View {
        Button("Show Game Center") {
            authViewModel.authenticate()
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


