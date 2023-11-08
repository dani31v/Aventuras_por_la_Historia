import SwiftUI

@main
struct myStoryApp: App {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var authViewModel = AuthViewModel()
    @StateObject var mystory = myStory()

    var body: some Scene {
        WindowGroup {
            Group {
                if authViewModel.isAuthenticated {
                    MainView(mystory: mystory)
                        .environmentObject(viewRouter)
                        .environmentObject(authViewModel)
                } else {
                    GameCenterView()
                        .environmentObject(authViewModel)
                }
            }
            .onAppear {
                authViewModel.authenticate()
            }
        }
    }
}
