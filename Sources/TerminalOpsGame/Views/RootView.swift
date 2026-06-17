import SwiftUI

struct RootView: View {
    @EnvironmentObject private var game: GameStore

    var body: some View {
        ZStack {
            background

            switch game.phase {
            case .language:
                LanguageMenuView()
                    .transition(.opacity)
            case .side:
                SideSelectionView()
                    .transition(.opacity)
            case .intro:
                IntroCinematicView()
                    .transition(.opacity)
            case .desktop:
                MacDesktopView()
                    .transition(.opacity)
            case .terminal:
                GameTerminalView()
                    .transition(.opacity)
            }
        }
        .animation(.easeInOut(duration: 0.18), value: game.phase)
        .preferredColorScheme(.dark)
    }

    @ViewBuilder
    private var background: some View {
        // v1.2: Matrix is the permanent visual language of the game.
        // Menu/side selection uses a static lightweight matrix wallpaper so startup stays stable.
        // Intro/desktop/terminal use animated rain as the active monitor wallpaper.
        let animated = game.phase == .intro || game.phase == .desktop || game.phase == .terminal
        MatrixRainView(isAnimated: animated)
            .ignoresSafeArea()
            .overlay(sideTint.ignoresSafeArea())
    }

    private var sideTint: some View {
        let side = game.profile.side
        let color: Color
        switch side {
        case .redTeam:
            color = Color.red.opacity(0.12)
        case .blueTeam:
            color = Color.cyan.opacity(0.12)
        case .greyTeam:
            color = Color.gray.opacity(0.14)
        case .blackTeam:
            color = Color.purple.opacity(0.12)
        case .whiteTeam:
            color = Color.white.opacity(0.08)
        case .none:
            color = Color.green.opacity(0.08)
        }
        return LinearGradient(colors: [.black.opacity(0.18), color, .black.opacity(0.28)], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
