//
//  AuthViewModel.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI
import Combine
import GameKit

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated = false

    
    func authenticate() {
        print(isAuthenticated)
        let localPlayer = GKLocalPlayer.local
        localPlayer.authenticateHandler = { viewController, error in
            if let viewController = viewController {
                
            } else if localPlayer.isAuthenticated {
                
                print("SI")
               
                self.isAuthenticated = true
                
    
            } else {
     
                print("Error al autenticar al jugador: \(error?.localizedDescription ?? "Unknown error")")
            }
        }
        
    }
    
    
    
    
}
