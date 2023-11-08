//
//  bookApp.swift
//  book
//
//  Created by Daniela Valencia on 06/11/23.
//

import SwiftUI

@main
struct myStoryApp: App {
    var viewRouter = ViewRouter()
    @State private var isPresenting = false
    @StateObject private var mystory = myStory()
    var body: some Scene {
        WindowGroup{
            MainView(mystory: mystory)
                .environmentObject(viewRouter)
            
            }
        }
        
    }
  
