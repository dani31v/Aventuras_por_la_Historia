//
//  bookApp.swift
//  book
//
//  Created by Daniela Valencia on 06/11/23.
//

import SwiftUI

@main
struct myStoryApp: App {
    @State private var isPresenting = false
    @StateObject private var mystory = myStory()
    var body: some Scene {
        WindowGroup{
            MainView(mystory: mystory)
            
            }
        }
        
    }
  
