import SwiftUI

@main
struct TerminalOpsGameApp: App {
    @StateObject private var game = GameStore()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(game)
                .task {
                    await game.bootstrap()
                }
        }
    }
}
