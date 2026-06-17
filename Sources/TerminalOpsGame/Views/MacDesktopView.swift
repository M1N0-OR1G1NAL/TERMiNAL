import SwiftUI

struct MacDesktopView: View {
    @EnvironmentObject private var game: GameStore
    @State private var showAppleMenu = false
    @State private var selectedStorySide: PlayerSide? = nil
    @State private var pressedVirtualKey: String? = nil

    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black.ignoresSafeArea()
                labRoomGlow

                VStack(spacing: 0) {
                    Spacer(minLength: 8)
                    macBookFrame(size: geo.size)
                    Spacer(minLength: 8)
                }

                popupLayer
                scoreLayer
            }
            .onAppear {
                selectedStorySide = game.profile.side ?? .blueTeam
                if game.currentMissionID.isEmpty {
                    game.startPlayableCampaignFromSelectedSide()
                }
            }
        }
    }

    private var labRoomGlow: some View {
        ZStack {
            RadialGradient(colors: [.green.opacity(0.18), .clear], center: .leading, startRadius: 20, endRadius: 520)
            RadialGradient(colors: [.cyan.opacity(0.13), .clear], center: .trailing, startRadius: 20, endRadius: 520)
            LinearGradient(colors: [.black, .black.opacity(0.88), .black], startPoint: .top, endPoint: .bottom)
        }
        .ignoresSafeArea()
    }

    private func macBookFrame(size: CGSize) -> some View {
        let maxWidth = size.width - 18
        let maxHeight = size.height - 18
        let frameWidth = min(maxWidth, maxHeight * (game.virtualKeyboardVisible ? 1.50 : 1.78))
        let screenHeight = game.virtualKeyboardVisible ? min(maxHeight * 0.58, frameWidth / 1.82) : min(maxHeight - 18, frameWidth / 1.78)
        let deckHeight = game.virtualKeyboardVisible ? min(maxHeight * 0.38, frameWidth * 0.29) : 0

        return VStack(spacing: game.virtualKeyboardVisible ? 0 : 0) {
            ZStack {
                RoundedRectangle(cornerRadius: 28, style: .continuous)
                    .fill(LinearGradient(colors: [.black, Color(red: 0.03, green: 0.035, blue: 0.04)], startPoint: .top, endPoint: .bottom))
                    .overlay(RoundedRectangle(cornerRadius: 28).stroke(.white.opacity(0.16), lineWidth: 1.2))
                    .shadow(color: .green.opacity(0.18), radius: 26, x: 0, y: 0)

                VStack(spacing: 0) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 18, style: .continuous)
                            .fill(Color.black)
                            .overlay(RoundedRectangle(cornerRadius: 18).stroke(.white.opacity(0.08), lineWidth: 1))
                            .padding(.horizontal, 18)
                            .padding(.top, 18)
                            .padding(.bottom, 26)
                        virtualScreen
                            .clipShape(RoundedRectangle(cornerRadius: 13, style: .continuous))
                            .padding(.horizontal, 24)
                            .padding(.top, 24)
                            .padding(.bottom, 34)
                    }
                    Text("MacBook Pro")
                        .font(.system(size: 11, weight: .semibold, design: .rounded))
                        .foregroundStyle(.white.opacity(0.34))
                        .offset(y: -26)
                }
            }
            .frame(width: frameWidth, height: screenHeight)

            if game.virtualKeyboardVisible {
                virtualKeyboardDeck(width: frameWidth, height: deckHeight)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
            } else {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(LinearGradient(colors: [.black.opacity(0.9), .white.opacity(0.09), .black.opacity(0.9)], startPoint: .leading, endPoint: .trailing))
                    .frame(width: frameWidth * 0.72, height: 10)
                    .opacity(0.6)
                    .offset(y: -4)
            }
        }
        .animation(.spring(response: 0.38, dampingFraction: 0.86), value: game.virtualKeyboardVisible)
    }

    private var virtualScreen: some View {
        GeometryReader { proxy in
            let scale = min(proxy.size.width / 1440, proxy.size.height / 810)
            desktopCanvas
                .frame(width: 1440, height: 810)
                .scaleEffect(scale)
                .position(x: proxy.size.width / 2, y: proxy.size.height / 2)
        }
    }

    private var desktopCanvas: some View {
        ZStack {
            MatrixRainView(isAnimated: true)
                .opacity(0.48)
                .overlay(Color.black.opacity(game.activeDesktopApp == .storyLines ? 0.28 : 0.18))

            VStack(spacing: 0) {
                macMenuBar
                ZStack(alignment: .bottom) {
                    desktopWorkspace
                    if !game.virtualDockHidden { dock.transition(.move(edge: .bottom).combined(with: .opacity)) }
                    virtualTouchOverlay
                }
            }
        }
        .frame(width: 1440, height: 810)
        .clipped()
    }

    private var macMenuBar: some View {
        ZStack(alignment: .topLeading) {
            HStack(spacing: 16) {
                Button { withAnimation(.easeOut(duration: 0.15)) { showAppleMenu.toggle() } } label: {
                    Image(systemName: "apple.logo")
                        .font(.system(size: 13, weight: .black))
                        .foregroundStyle(.white)
                }
                Text("Soubor")
                Text("Úpravy")
                Text("Zobrazení")
                Text("Terminál")
                Text("Okno")
                Text("Nápověda")
                Spacer()
                HStack(spacing: 8) {
                    Image(systemName: "wifi")
                    Text("100%")
                    Image(systemName: "battery.100")
                    Text("So 10:24 PM")
                    Image(systemName: "magnifyingglass")
                    Image(systemName: "line.3.horizontal")
                }
            }
            .font(.system(size: 11, weight: .semibold, design: .rounded))
            .foregroundStyle(.white.opacity(0.92))
            .padding(.horizontal, 14)
            .frame(height: 28)
            .background(.black.opacity(0.86))

            if showAppleMenu {
                appleMenu
                    .offset(x: 8, y: 28)
                    .zIndex(100)
            }
        }
        .frame(height: 28)
    }

    private var appleMenu: some View {
        VStack(alignment: .leading, spacing: 0) {
            menuItem("O tomto Macu", action: { game.openDesktopApp(.settings); showAppleMenu = false })
            menuItem("Nastavení systému…", action: { game.openDesktopApp(.settings); showAppleMenu = false })
            menuItem("App Store…", dimmed: true, action: {})
            Divider().background(.white.opacity(0.12))
            menuItem("Nedávné položky ›", dimmed: true, action: {})
            menuItem("Uspat", highlighted: true, action: {
                game.openDesktopApp(.storyLines)
                selectedStorySide = game.profile.side ?? .blueTeam
                withAnimation(.easeOut(duration: 0.15)) { showAppleMenu = false }
            })
            menuItem("Restartovat…", action: { game.phase = .intro; showAppleMenu = false })
            menuItem("Vypnout…", dimmed: true, action: {})
            Divider().background(.white.opacity(0.12))
            menuItem("Uzamknout obrazovku        ^⌘Q", action: { game.openDesktopApp(.storyLines); showAppleMenu = false })
            menuItem("Odhlásit se z CyberTrainee… ⇧⌘Q", dimmed: true, action: {})
        }
        .padding(.vertical, 5)
        .frame(width: 220)
        .background(.black.opacity(0.94), in: RoundedRectangle(cornerRadius: 8, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(.white.opacity(0.12), lineWidth: 1))
        .shadow(color: .black.opacity(0.45), radius: 18, x: 0, y: 12)
    }

    private func menuItem(_ title: String, highlighted: Bool = false, dimmed: Bool = false, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            HStack {
                Text(title)
                    .font(.system(size: 11, weight: .medium, design: .rounded))
                Spacer()
            }
            .foregroundStyle(dimmed ? .white.opacity(0.36) : .white.opacity(0.94))
            .padding(.horizontal, 10)
            .frame(height: 25)
            .background(highlighted ? Color.blue.opacity(0.92) : Color.clear)
        }
        .disabled(dimmed)
    }

    private var desktopWorkspace: some View {
        ZStack(alignment: .topLeading) {
            if game.activeDesktopApp == .storyLines {
                sleepDimLayer
                backgroundMailWindow
                    .frame(width: 235, height: 185)
                    .offset(x: 110, y: 60)
                    .opacity(0.55)
                backgroundFinderWindow
                    .frame(width: 300, height: 230)
                    .offset(x: 52, y: 280)
                    .opacity(0.62)
                storyLinesWindow
                    .frame(maxWidth: 740, maxHeight: 470)
                    .padding(.leading, 360)
                    .padding(.top, 48)
                rightStatusStack
                    .frame(width: 170)
                    .padding(.leading, 1188)
                    .padding(.top, 48)
            } else {
                backgroundMailWindow
                    .frame(width: 235, height: 185)
                    .offset(x: 80, y: 58)
                backgroundFinderWindow
                    .frame(width: 310, height: 230)
                    .offset(x: 52, y: 278)
                terminalWindow
                    .frame(width: 548, height: 455)
                    .offset(x: 380, y: 82)
                safariWindow
                    .frame(width: 310, height: 270)
                    .offset(x: 945, y: 250)
                if game.activeDesktopApp == .settings {
                    settingsWindow
                        .frame(width: 440, height: 330)
                        .offset(x: 500, y: 130)
                        .zIndex(10)
                }
                if game.activeDesktopApp == .mobile {
                    windowChrome("Mobile — iPhone-lab") {
                        VirtualMobileView()
                    }
                    .frame(width: 520, height: 430)
                    .offset(x: 470, y: 110)
                    .zIndex(10)
                }
                rightStatusStack
                    .frame(width: 170)
                    .offset(x: 1260, y: 48)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    private var sleepDimLayer: some View {
        Color.black.opacity(0.25)
            .overlay(
                LinearGradient(colors: [.clear, .black.opacity(0.2)], startPoint: .top, endPoint: .bottom)
            )
    }

    private func windowChrome<Content: View>(_ title: String, width: CGFloat? = nil, @ViewBuilder content: () -> Content) -> some View {
        VStack(spacing: 0) {
            HStack(spacing: 6) {
                Circle().fill(.red.opacity(0.95)).frame(width: 10, height: 10)
                Circle().fill(.yellow.opacity(0.95)).frame(width: 10, height: 10)
                Circle().fill(.green.opacity(0.95)).frame(width: 10, height: 10)
                Spacer()
                Text(title)
                    .font(.system(size: 12, weight: .bold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.76))
                Spacer()
                Image(systemName: "xmark")
                    .font(.system(size: 9, weight: .bold))
                    .foregroundStyle(.white.opacity(0.42))
            }
            .padding(.horizontal, 12)
            .frame(height: 30)
            .background(.black.opacity(0.68))
            content()
        }
        .background(.black.opacity(0.78), in: RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(.white.opacity(0.12), lineWidth: 1))
        .shadow(color: .black.opacity(0.5), radius: 18, x: 0, y: 10)
    }

    private var backgroundMailWindow: some View {
        windowChrome("Mail") {
            VStack(alignment: .leading, spacing: 10) {
                HStack { Text("Inbox (1 Unread)"); Spacer(); Image(systemName: "envelope") }
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.74))
                HStack(alignment: .top, spacing: 10) {
                    Circle().fill(.green).frame(width: 8, height: 8).padding(.top, 4)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(game.currentMailSubject().replacingOccurrences(of: "Úkol: ", with: "Briefing: "))
                            .font(.system(size: 12, weight: .black, design: .rounded))
                            .foregroundStyle(.white)
                        Text("Mission Control")
                            .font(.system(size: 10, weight: .semibold, design: .rounded))
                            .foregroundStyle(.cyan.opacity(0.85))
                        Text("Tvoje první mise je připravena. Přečti brief ve svých Dokumentech.")
                            .font(.system(size: 10, weight: .regular, design: .rounded))
                            .foregroundStyle(.white.opacity(0.66))
                            .lineLimit(3)
                    }
                    Spacer()
                    Text("10:21 PM")
                        .font(.system(size: 9, weight: .regular, design: .rounded))
                        .foregroundStyle(.white.opacity(0.58))
                }
                Spacer()
                HStack { Spacer(); Image(systemName: "square.and.pencil").foregroundStyle(.white.opacity(0.75)); Spacer() }
            }
            .padding(12)
        }
        .onTapGesture { game.openDesktopApp(.mail) }
    }

    private var backgroundFinderWindow: some View {
        windowChrome("Finder") {
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Oblíbené")
                        .font(.system(size: 9, weight: .bold, design: .rounded))
                        .foregroundStyle(.white.opacity(0.42))
                    ForEach(["Dokumenty", "Stahování", "Aplikace", "Skripty", "Důkazy", "Archivy"], id: \.self) { item in
                        HStack(spacing: 7) {
                            Image(systemName: item == "Stahování" ? "arrow.down.circle" : "folder")
                            Text(item)
                        }
                        .font(.system(size: 10, weight: .semibold, design: .rounded))
                        .foregroundStyle(.white.opacity(0.74))
                    }
                    Spacer()
                    Text("Umístění")
                        .font(.system(size: 9, weight: .bold, design: .rounded))
                        .foregroundStyle(.white.opacity(0.42))
                    HStack { Image(systemName: "internaldrive"); Text("Simulator HD") }
                        .font(.system(size: 10, weight: .semibold, design: .rounded))
                        .foregroundStyle(.white.opacity(0.74))
                }
                .padding(12)
                .frame(width: 105, alignment: .leading)
                .background(.white.opacity(0.035))

                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 18) {
                    ForEach(["Dokumenty", "Stahování", "Aplikace", "Skripty", "Důkazy", "Archivy"], id: \.self) { folder in
                        VStack(spacing: 5) {
                            Image(systemName: "folder.fill")
                                .font(.system(size: 35))
                                .foregroundStyle(.blue)
                            Text(folder)
                                .font(.system(size: 9, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white.opacity(0.85))
                        }
                    }
                }
                .padding(16)
            }
        }
        .onTapGesture { game.openDesktopApp(.documents) }
    }

    private var terminalWindow: some View {
        windowChrome("Terminal — cybertrainee@simulator — ~") {
            GameTerminalView()
                .padding(0)
        }
        .onTapGesture { game.openDesktopApp(.terminal) }
    }

    private var safariWindow: some View {
        windowChrome("SimNet — The Training Network") {
            VStack(alignment: .leading, spacing: 12) {
                HStack(spacing: 8) {
                    Image(systemName: "chevron.left")
                    Image(systemName: "chevron.right")
                    Image(systemName: "arrow.clockwise")
                    HStack(spacing: 6) {
                        Image(systemName: "lock.fill")
                        Text("https://simnet.training")
                    }
                    .font(.system(size: 10, weight: .bold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.8))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.white.opacity(0.08), in: Capsule())
                }
                .font(.system(size: 12, weight: .bold))
                .foregroundStyle(.white.opacity(0.78))

                Text("SIMNET")
                    .font(.system(size: 24, weight: .black, design: .rounded))
                    .foregroundStyle(.white)
                Text("THE TRAINING NETWORK")
                    .font(.system(size: 9, weight: .black, design: .monospaced))
                    .foregroundStyle(.cyan)
                    .offset(y: -10)
                Spacer()
                VStack(alignment: .leading, spacing: 7) {
                    Text("WELCOME, TRAINEE")
                        .font(.system(size: 18, weight: .black, design: .rounded))
                        .foregroundStyle(.white)
                    Text("Sharpen your skills. Complete missions. Unlock the truth.")
                        .font(.system(size: 11, weight: .semibold, design: .rounded))
                        .foregroundStyle(.white.opacity(0.68))
                    HStack {
                        Text("Mission 01: School Hard Mode")
                        Spacer()
                        Text("0%")
                    }
                    .font(.system(size: 11, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    .padding(10)
                    .background(.black.opacity(0.36), in: RoundedRectangle(cornerRadius: 10))
                }
                .padding(12)
                .background(LinearGradient(colors: [.cyan.opacity(0.16), .black.opacity(0.3)], startPoint: .topLeading, endPoint: .bottomTrailing), in: RoundedRectangle(cornerRadius: 14))
            }
            .padding(14)
        }
        .onTapGesture { game.openDesktopApp(.safari) }
    }

    private var settingsWindow: some View {
        windowChrome("Nastavení systému") {
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Simulator")
                    Text("Síť")
                    Text("Soukromí")
                    Text("iCloud Progress")
                    Text("Zpřístupnění")
                    Spacer()
                }
                .font(.system(size: 12, weight: .bold, design: .rounded))
                .foregroundStyle(.white.opacity(0.72))
                .padding(16)
                .frame(width: 140, alignment: .leading)
                .background(.white.opacity(0.04))

                VStack(alignment: .leading, spacing: 14) {
                    Text("Virtuální MacBook Pro")
                        .font(.system(size: 22, weight: .black, design: .rounded))
                        .foregroundStyle(.white)
                    Text("Landscape-only simulátor. Matrix tapeta je součást prostředí, ne volitelný přepínač.")
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                        .foregroundStyle(.white.opacity(0.66))
                    Divider().background(.white.opacity(0.2))
                    Label("iCloud progress: \(game.profile.iCloudStatus)", systemImage: "icloud.fill")
                    Label("Aktivní linie: \(game.profile.side?.displayName ?? "Blue Team cybersec")", systemImage: "flag.fill")
                    Label("Dock odemyká aplikace podle stažených balíků", systemImage: "square.grid.3x2.fill")
                    Button("Otevřít Story Lines") { game.openDesktopApp(.storyLines) }
                        .buttonStyle(MissionButtonStyle())
                    Spacer()
                }
                .font(.system(size: 12, weight: .bold, design: .rounded))
                .foregroundStyle(.green.opacity(0.9))
                .padding(18)
            }
        }
    }

    private var rightStatusStack: some View {
        VStack(spacing: 12) {
            statusBox(title: "SYSTÉM STATUS") {
                statusLine("User", game.profile.alias.lowercased())
                statusLine("Level", "\(game.profile.level)")
                statusLine("XP", "\(game.profile.totalXP) / \(max(500, game.profile.level * 500))")
                statusLine("Rank", game.profile.level > 4 ? "Operator" : "Trainee")
                ProgressView(value: Double(min(100, game.profile.progressPercent)), total: 100).tint(.green)
            }
            statusBox(title: "AKTIVNÍ KAMPAŇ") {
                Text(game.profile.side?.displayName ?? "Blue Team cybersec")
                    .font(.system(size: 11, weight: .bold, design: .rounded))
                    .foregroundStyle(.cyan)
                Text("Kapitola 1 / 8")
                    .font(.system(size: 11, weight: .bold, design: .rounded))
                    .foregroundStyle(.green)
                HStack { ProgressView(value: 21, total: 100).tint(.green); Text("21%") }
                    .font(.system(size: 10, weight: .bold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.8))
                Button("ZOBRAZIT KAMPAŇ") { game.openDesktopApp(.storyLines) }
                    .buttonStyle(SmallNeonButtonStyle())
            }
            statusBox(title: "VPN") {
                Text(game.runningApps.contains("LabVPN") ? "PŘIPOJENO" : "DISCONNECTED")
                    .font(.system(size: 12, weight: .black, design: .rounded))
                    .foregroundStyle(game.runningApps.contains("LabVPN") ? .green : .red)
                Image(systemName: "map.fill")
                    .font(.system(size: 34))
                    .foregroundStyle(.white.opacity(0.25))
                Button(game.runningApps.contains("LabVPN") ? "ODPOJIT" : "CONNECT") { game.submit("vpn status") }
                    .buttonStyle(SmallNeonButtonStyle())
            }
            statusBox(title: "Rychlý přístup") {
                HStack {
                    quickIcon("Mise", "list.bullet.rectangle") { game.submit("mission") }
                    quickIcon("Skills", "chart.bar.fill") { game.submit("status") }
                    quickIcon("Důkazy", "doc.text.magnifyingglass") { game.openDesktopApp(.documents) }
                }
            }
            Spacer()
        }
    }

    private func statusBox<Content: View>(title: String, @ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.system(size: 10, weight: .black, design: .monospaced))
                .foregroundStyle(.white.opacity(0.82))
            content()
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.black.opacity(0.72), in: RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(.green.opacity(0.22), lineWidth: 1))
    }

    private func statusLine(_ key: String, _ value: String) -> some View {
        HStack(spacing: 4) {
            Text("\(key):")
                .foregroundStyle(.green)
            Text(value)
                .foregroundStyle(.white.opacity(0.82))
        }
        .font(.system(size: 10, weight: .bold, design: .rounded))
    }

    private func quickIcon(_ title: String, _ icon: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: icon).font(.system(size: 16, weight: .bold))
                Text(title).font(.system(size: 8, weight: .bold, design: .rounded))
            }
            .foregroundStyle(.green)
            .frame(maxWidth: .infinity)
        }
    }

    private var storyLinesWindow: some View {
        windowChrome("STORY LINES") {
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 12) {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("STORY LINES")
                            .font(.system(size: 24, weight: .black, design: .rounded))
                            .foregroundStyle(.white)
                        Text("VYBER SI SVOU CESTU. TVŮJ PROGRES. TVŮJ PŘÍBĚH.")
                            .font(.system(size: 9, weight: .black, design: .monospaced))
                            .foregroundStyle(.white.opacity(0.55))
                    }
                    Text("VYBER KAMPAŇ")
                        .font(.system(size: 9, weight: .black, design: .monospaced))
                        .foregroundStyle(.cyan)
                    ForEach([PlayerSide.blueTeam, .redTeam, .greyTeam, .whiteTeam, .blackTeam], id: \.self) { side in
                        storyCard(side)
                    }
                    Spacer()
                }
                .padding(16)
                .frame(width: 255)
                .background(.black.opacity(0.28))

                Divider().background(.white.opacity(0.08))

                storyDetail(side: selectedStorySide ?? game.profile.side ?? .blueTeam)
                    .padding(18)
            }
        }
    }

    private func storyCard(_ side: PlayerSide) -> some View {
        let unlocked = game.isSideUnlocked(side)
        let selected = (selectedStorySide ?? game.profile.side ?? .blueTeam) == side
        return Button {
            if unlocked {
                selectedStorySide = side
                game.profile.side = side
                game.startPlayableCampaignFromSelectedSide()
            }
        } label: {
            HStack(spacing: 12) {
                ZStack {
                    RoundedRectangle(cornerRadius: 12).fill(storyColor(side).opacity(unlocked ? 0.22 : 0.07))
                    Image(systemName: storyIcon(side))
                        .font(.system(size: 25, weight: .black))
                        .foregroundStyle(unlocked ? storyColor(side) : .white.opacity(0.32))
                }
                .frame(width: 52, height: 52)
                VStack(alignment: .leading, spacing: 4) {
                    Text(storyTitle(side))
                        .font(.system(size: 12, weight: .black, design: .rounded))
                        .foregroundStyle(unlocked ? .white : .white.opacity(0.36))
                    Text(unlocked ? storySubtitle(side) : "Odemkne se na vyšší úrovni")
                        .font(.system(size: 9, weight: .bold, design: .rounded))
                        .foregroundStyle(unlocked ? storyColor(side).opacity(0.9) : .white.opacity(0.32))
                        .lineLimit(2)
                    Text("8 KAPITOL  •  40 MISÍ")
                        .font(.system(size: 8, weight: .black, design: .monospaced))
                        .foregroundStyle(.white.opacity(unlocked ? 0.62 : 0.24))
                }
                Spacer()
                if !unlocked { Image(systemName: "lock.fill").foregroundStyle(.white.opacity(0.36)) }
            }
            .padding(10)
            .background(.black.opacity(selected ? 0.55 : 0.26), in: RoundedRectangle(cornerRadius: 14, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 14).stroke(selected ? storyColor(side).opacity(0.9) : storyColor(side).opacity(unlocked ? 0.35 : 0.12), lineWidth: 1.2))
            .overlay {
                if !unlocked {
                    HStack(spacing: 5) {
                        ForEach(0..<8, id: \.self) { _ in RoundedRectangle(cornerRadius: 2).fill(.white.opacity(0.09)).frame(width: 12, height: 3) }
                    }
                    .offset(y: 14)
                }
            }
        }
        .disabled(!unlocked)
    }

    private func storyDetail(side: PlayerSide) -> some View {
        let unlocked = game.isSideUnlocked(side)
        return VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(storyTitle(side))
                        .font(.system(size: 20, weight: .black, design: .rounded))
                        .foregroundStyle(unlocked ? storyColor(side) : .white.opacity(0.38))
                    Text(unlocked ? storySubtitle(side) : "ZAMČENO — obsah nečitelný do splnění úrovně")
                        .font(.system(size: 10, weight: .black, design: .monospaced))
                        .foregroundStyle(.white.opacity(unlocked ? 0.62 : 0.3))
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 5) {
                    Text("CELKOVÝ PROGRES")
                        .font(.system(size: 9, weight: .black, design: .monospaced))
                        .foregroundStyle(.white.opacity(0.48))
                    HStack { Text(unlocked ? "21%" : "--"); ProgressView(value: unlocked ? 21 : 0, total: 100).tint(.green).frame(width: 110) }
                        .font(.system(size: 12, weight: .black, design: .rounded))
                        .foregroundStyle(.white.opacity(0.8))
                }
            }
            storyPreviewImage(side: side, unlocked: unlocked)
                .frame(height: 105)
            Text(unlocked ? storyDescription(side) : "████████ █████████ ████ ██████. Popisy, obrázky a záložky se aktivují až po odemčení této linie. Splň předchozí úrovně a vrať se přes Apple → Uspat.")
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundStyle(.white.opacity(unlocked ? 0.72 : 0.32))
                .lineLimit(3)

            HStack(alignment: .top, spacing: 16) {
                chaptersPanel(unlocked: unlocked)
                    .frame(width: 175)
                tabPanel(unlocked: unlocked, side: side)
            }
            Spacer()
            HStack {
                Text(unlocked ? "Linie je ovladatelná. Zamčené kapitoly zobrazují jen název a lock." : "Zamčená linie: nečitelný popis, neaktivní záložky, bez ovládání.")
                    .font(.system(size: 10, weight: .bold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.46))
                Spacer()
                Button("POKRAČOVAT") {
                    if unlocked {
                        game.profile.side = side
                        game.startPlayableCampaignFromSelectedSide()
                        game.openDesktopApp(.mail)
                    }
                }
                .buttonStyle(StoryContinueButtonStyle(enabled: unlocked))
                .disabled(!unlocked)
            }
        }
    }

    private func storyPreviewImage(side: PlayerSide, unlocked: Bool) -> some View {
        ZStack {
            LinearGradient(colors: [storyColor(side).opacity(unlocked ? 0.24 : 0.05), .black.opacity(0.72)], startPoint: .topLeading, endPoint: .bottomTrailing)
            MatrixRainView(isAnimated: unlocked).opacity(unlocked ? 0.18 : 0.04)
            if unlocked {
                HStack(spacing: 22) {
                    Image(systemName: side == .blueTeam ? "network" : storyIcon(side))
                        .font(.system(size: 54, weight: .black))
                        .foregroundStyle(storyColor(side).opacity(0.84))
                    VStack(alignment: .leading, spacing: 5) {
                        Text(side == .blueTeam ? "CYBER DEFENSE ACADEMY" : "SIMULATED LAB WORLD")
                            .font(.system(size: 15, weight: .black, design: .monospaced))
                            .foregroundStyle(.white)
                        Text("Ops centrum • virtuální MacBook • příběhové mise")
                            .font(.system(size: 11, weight: .bold, design: .rounded))
                            .foregroundStyle(.white.opacity(0.62))
                    }
                }
            } else {
                Image(systemName: "lock.fill")
                    .font(.system(size: 36, weight: .black))
                    .foregroundStyle(.white.opacity(0.22))
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 14).stroke(storyColor(side).opacity(unlocked ? 0.28 : 0.08), lineWidth: 1))
    }

    private func chaptersPanel(unlocked: Bool) -> some View {
        VStack(alignment: .leading, spacing: 7) {
            Text("KAPITOLY")
                .font(.system(size: 10, weight: .black, design: .monospaced))
                .foregroundStyle(.cyan)
            let chapters = ["Škola hard mode", "OmniCore Day 1", "Data Loss", "Cenzurní engine", "Veřejný zájem", "Incident Response", "Real Mac Defender", "Poslední linie"]
            ForEach(Array(chapters.enumerated()), id: \.offset) { index, chapter in
                HStack {
                    Text(String(format: "%02d", index + 1))
                        .font(.system(size: 12, weight: .black, design: .monospaced))
                        .foregroundStyle(.white.opacity(0.7))
                    Text(index < 2 && unlocked ? chapter : chapter)
                        .font(.system(size: 10, weight: .bold, design: .rounded))
                        .foregroundStyle((unlocked && index < 2) ? .white.opacity(0.86) : .white.opacity(0.38))
                        .lineLimit(1)
                    Spacer()
                    if unlocked && index < 2 { Circle().fill(.green).frame(width: 6, height: 6) } else { Image(systemName: "lock.fill").font(.system(size: 8)).foregroundStyle(.white.opacity(0.28)) }
                }
                .padding(.horizontal, 9)
                .frame(height: 30)
                .background((unlocked && index == 0) ? Color.blue.opacity(0.25) : Color.white.opacity(0.035), in: RoundedRectangle(cornerRadius: 8))
                .overlay(RoundedRectangle(cornerRadius: 8).stroke((unlocked && index == 0) ? Color.cyan.opacity(0.8) : Color.white.opacity(0.07), lineWidth: 1))
            }
        }
    }

    private func tabPanel(unlocked: Bool, side: PlayerSide) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 18) {
                Text("PŘEHLED").foregroundStyle(unlocked ? .cyan : .white.opacity(0.22))
                Text("ÚKOLY").foregroundStyle(unlocked ? .white.opacity(0.52) : .white.opacity(0.18))
                Text("POZNÁMKY").foregroundStyle(unlocked ? .white.opacity(0.52) : .white.opacity(0.18))
            }
            .font(.system(size: 10, weight: .black, design: .monospaced))
            Text(unlocked ? "První krok. Základy obrany. Naučíš se číst mail, hledat brief, otevřít terminál a reagovat na časovou osu mise." : "██████ █████████ ████ ████ ████")
                .font(.system(size: 11, weight: .medium, design: .rounded))
                .foregroundStyle(.white.opacity(unlocked ? 0.68 : 0.22))
                .lineLimit(2)
            HStack(spacing: 10) {
                statTile("DÉLKA", unlocked ? "45–60 min" : "--")
                statTile("NÁROČNOST", unlocked ? "Střední" : "████")
                statTile("ODMĚNY", unlocked ? "150 XP" : "--")
            }
            .opacity(unlocked ? 1 : 0.42)
            VStack(alignment: .leading, spacing: 6) {
                Text("ZA DOKONČENÍ ZÍSKÁŠ")
                    .font(.system(size: 9, weight: .black, design: .monospaced))
                    .foregroundStyle(.white.opacity(0.42))
                HStack(spacing: 13) {
                    Text(unlocked ? "XP 150" : "XP --")
                    Text(unlocked ? "2 500 Creditů" : "Credits --")
                    Label(unlocked ? "Badge" : "Locked", systemImage: unlocked ? "shield.fill" : "lock.fill")
                }
                .font(.system(size: 11, weight: .black, design: .rounded))
                .foregroundStyle(unlocked ? .green : .white.opacity(0.24))
            }
            .padding(12)
            .background(.black.opacity(0.32), in: RoundedRectangle(cornerRadius: 10))
            Spacer()
        }
    }

    private func statTile(_ title: String, _ value: String) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.system(size: 8, weight: .black, design: .monospaced))
                .foregroundStyle(.white.opacity(0.42))
            Text(value)
                .font(.system(size: 11, weight: .black, design: .rounded))
                .foregroundStyle(value.contains("Střední") ? .yellow : .white.opacity(0.86))
        }
        .padding(10)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.black.opacity(0.38), in: RoundedRectangle(cornerRadius: 10))
    }


    private var virtualTouchOverlay: some View {
        ZStack(alignment: .bottom) {
            VStack { Spacer(); HStack { touchpadHint; Spacer(); keyboardControlStack } }
                .padding(.horizontal, 18)
                .padding(.bottom, game.virtualDockHidden ? 56 : 96)

            Button {
                withAnimation(.spring(response: 0.35, dampingFraction: 0.86)) { game.virtualKeyboardVisible.toggle() }
            } label: {
                HStack(spacing: 10) {
                    Image(systemName: game.virtualKeyboardVisible ? "chevron.down" : "chevron.up")
                    Text(game.virtualKeyboardVisible ? "Skrýt klávesnici" : "Přejeď nahoru / zobraz klávesnici")
                    Image(systemName: "keyboard")
                }
                .font(.system(size: 11, weight: .black, design: .rounded))
                .foregroundStyle(.white.opacity(0.86))
                .padding(.horizontal, 26)
                .frame(height: 36)
                .background(.black.opacity(0.70), in: Capsule())
                .overlay(Capsule().stroke(.white.opacity(0.12), lineWidth: 1))
            }
            .padding(.bottom, 10)
        }
        .frame(width: 1440, height: 810)
        .allowsHitTesting(true)
    }

    private var touchpadHint: some View {
        HStack(spacing: 10) {
            Image(systemName: "hand.tap.fill")
                .font(.system(size: 25, weight: .black))
                .foregroundStyle(.green)
            Text("Táhni po touchpadu / iMouse zóně\npro pohyb kurzoru")
                .font(.system(size: 10, weight: .black, design: .rounded))
                .foregroundStyle(.green.opacity(0.95))
        }
        .padding(12)
        .background(.black.opacity(0.66), in: RoundedRectangle(cornerRadius: 13, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 13).stroke(.green.opacity(0.28), lineWidth: 1))
    }

    private var keyboardControlStack: some View {
        VStack(spacing: 8) {
            Button {
                withAnimation(.spring(response: 0.35, dampingFraction: 0.86)) { game.virtualKeyboardVisible = true }
            } label: { keyboardControlLabel("chevron.up.square", "Show\nKeyboard") }
            Button {
                withAnimation(.spring(response: 0.35, dampingFraction: 0.86)) { game.virtualKeyboardVisible = false }
            } label: { keyboardControlLabel("keyboard", "Hide\nKeyboard") }
            Button {
                withAnimation(.easeInOut(duration: 0.22)) { game.virtualDockHidden.toggle() }
            } label: { keyboardControlLabel(game.virtualDockHidden ? "dock.rectangle" : "dock.arrow.down.rectangle", game.virtualDockHidden ? "Show\nDock" : "Hide\nDock") }
        }
    }

    private func keyboardControlLabel(_ icon: String, _ text: String) -> some View {
        VStack(spacing: 3) {
            Image(systemName: icon)
                .font(.system(size: 17, weight: .black))
            Text(text)
                .font(.system(size: 8, weight: .black, design: .rounded))
                .multilineTextAlignment(.center)
        }
        .foregroundStyle(.white.opacity(0.88))
        .frame(width: 72, height: 54)
        .background(.black.opacity(0.66), in: RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(.white.opacity(0.12), lineWidth: 1))
    }

    private func virtualKeyboardDeck(width: CGFloat, height: CGFloat) -> some View {
        VStack(spacing: 7) {
            HStack(spacing: 10) {
                Text("MacBook Pro Virtual Keyboard")
                    .font(.system(size: 10, weight: .black, design: .monospaced))
                    .foregroundStyle(.white.opacity(0.45))
                Spacer()
                Button {
                    withAnimation(.spring(response: 0.35, dampingFraction: 0.86)) { game.virtualKeyboardVisible = false }
                } label: {
                    Label("Schovat", systemImage: "chevron.down")
                        .font(.system(size: 10, weight: .black, design: .rounded))
                }
                .foregroundStyle(.green)
            }
            .padding(.horizontal, 18)

            virtualTouchBar
                .padding(.horizontal, 38)

            VStack(spacing: 5) {
                keyboardRow(["esc", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "=", "delete"])
                keyboardRow(["tab", "q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "[", "]", "\\"])
                keyboardRow(["caps", "a", "s", "d", "f", "g", "h", "j", "k", "l", ";", "'", "return"])
                keyboardRow(["shift", "z", "x", "c", "v", "b", "n", "m", ",", ".", "/", "shift"])
                keyboardRow(["fn", "control", "option", "command", "space", "command", "option", "←", "↑", "↓", "→"])
            }
            .padding(.horizontal, 30)

            HStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 22, style: .continuous)
                    .fill(LinearGradient(colors: [.white.opacity(0.075), .black.opacity(0.32)], startPoint: .top, endPoint: .bottom))
                    .frame(width: width * 0.34, height: max(42, height * 0.22))
                    .overlay(RoundedRectangle(cornerRadius: 22).stroke(.white.opacity(0.10), lineWidth: 1))
                    .overlay(Text("iMouse / Touchpad").font(.system(size: 10, weight: .black, design: .rounded)).foregroundStyle(.white.opacity(0.28)))
                    .gesture(DragGesture(minimumDistance: 0).onChanged { _ in game.openDesktopApp(game.activeDesktopApp) })
                Text("Klávesy vkládají znaky do terminálu. ENTER spouští příkaz, DELETE maže. Touch Bar je vizuální systémový panel.")
                    .font(.system(size: 9, weight: .bold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.42))
                    .lineLimit(2)
                Spacer()
            }
            .padding(.horizontal, 34)
        }
        .padding(.top, 8)
        .padding(.bottom, 10)
        .frame(width: width, height: height)
        .background(
            LinearGradient(colors: [Color(red: 0.15, green: 0.145, blue: 0.15), Color(red: 0.05, green: 0.052, blue: 0.056), .black.opacity(0.96)], startPoint: .top, endPoint: .bottom),
            in: RoundedRectangle(cornerRadius: 28, style: .continuous)
        )
        .overlay(RoundedRectangle(cornerRadius: 28).stroke(.white.opacity(0.12), lineWidth: 1))
        .shadow(color: .black.opacity(0.65), radius: 28, x: 0, y: 20)
    }

    private var virtualTouchBar: some View {
        HStack(spacing: 8) {
            ForEach(["escape", "brightness", "mission", "search", "mail", "terminal", "vpn", "sound"], id: \.self) { item in
                RoundedRectangle(cornerRadius: 7, style: .continuous)
                    .fill(.black.opacity(0.82))
                    .frame(height: 20)
                    .overlay(
                        Image(systemName: touchBarIcon(item))
                            .font(.system(size: 10, weight: .black))
                            .foregroundStyle(.cyan.opacity(0.78))
                    )
            }
        }
        .padding(.horizontal, 10)
        .frame(height: 28)
        .background(.black.opacity(0.72), in: RoundedRectangle(cornerRadius: 9, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 9).stroke(.white.opacity(0.08), lineWidth: 1))
    }

    private func touchBarIcon(_ item: String) -> String {
        switch item {
        case "escape": return "escape"
        case "brightness": return "sun.max.fill"
        case "mission": return "rectangle.stack.fill"
        case "search": return "magnifyingglass"
        case "mail": return "envelope.fill"
        case "terminal": return "terminal.fill"
        case "vpn": return "lock.shield.fill"
        case "sound": return "speaker.wave.2.fill"
        default: return "circle.fill"
        }
    }

    private func keyboardRow(_ keys: [String]) -> some View {
        HStack(spacing: 5) {
            ForEach(keys, id: \.self) { key in
                virtualKey(key)
                    .frame(maxWidth: key == "space" ? 260 : keyWidth(for: key), minHeight: 28, maxHeight: 34)
            }
        }
    }

    private func keyWidth(for key: String) -> CGFloat? {
        switch key {
        case "space": return 260
        case "delete", "return": return 82
        case "shift", "caps", "tab", "control", "option", "command": return 66
        default: return 42
        }
    }

    private func virtualKey(_ key: String) -> some View {
        Button {
            pressVirtualKey(key)
        } label: {
            Text(key)
                .font(.system(size: key.count > 1 ? 8 : 13, weight: .black, design: .rounded))
                .foregroundStyle(.white.opacity(0.88))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    LinearGradient(colors: [pressedVirtualKey == key ? .green.opacity(0.32) : .white.opacity(0.09), .black.opacity(0.72)], startPoint: .top, endPoint: .bottom),
                    in: RoundedRectangle(cornerRadius: 7, style: .continuous)
                )
                .overlay(RoundedRectangle(cornerRadius: 7).stroke(pressedVirtualKey == key ? .green.opacity(0.95) : .white.opacity(0.12), lineWidth: 1))
                .shadow(color: pressedVirtualKey == key ? .green.opacity(0.45) : .black.opacity(0.4), radius: pressedVirtualKey == key ? 10 : 2, x: 0, y: pressedVirtualKey == key ? 0 : 2)
                .scaleEffect(pressedVirtualKey == key ? 0.94 : 1.0)
        }
        .buttonStyle(.plain)
    }

    private func pressVirtualKey(_ key: String) {
        withAnimation(.easeOut(duration: 0.06)) { pressedVirtualKey = key }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.13) {
            withAnimation(.easeOut(duration: 0.10)) { pressedVirtualKey = nil }
        }
        game.openDesktopApp(.terminal)
        switch key {
        case "return":
            game.submitCommand()
        case "delete":
            if !game.currentInput.isEmpty { game.currentInput.removeLast() }
        case "space":
            game.currentInput.append(" ")
        case "tab":
            autocompleteInput()
        case "esc", "caps", "shift", "fn", "control", "option", "command", "←", "↑", "↓", "→":
            break
        default:
            game.currentInput.append(key)
        }
    }

    private func autocompleteInput() {
        let input = game.currentInput.lowercased()
        let suggestions = ["open mail", "open finder", "open terminal", "open safari", "open settings", "mail inbox", "docs ls", "mission", "vpn status", "brew search network", "app search vpn"]
        if let match = suggestions.first(where: { $0.hasPrefix(input) }) {
            game.currentInput = match
        }
    }

    private var dock: some View {
        HStack(spacing: 10) {
            ForEach(baseDockApps, id: \.self) { app in
                dockIcon(app: app, locked: false)
            }
            Divider().background(.white.opacity(0.18)).frame(height: 42)
            ForEach(installedDockApps, id: \.self) { appName in
                installedAppDockIcon(appName)
            }
            ForEach(0..<max(0, 5 - installedDockApps.count), id: \.self) { _ in
                lockedDockIcon
            }
            Divider().background(.white.opacity(0.18)).frame(height: 42)
            Image(systemName: "trash.fill")
                .font(.system(size: 32))
                .foregroundStyle(.white.opacity(0.45))
                .frame(width: 48, height: 48)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 8)
        .background(.black.opacity(0.68), in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 24).stroke(.white.opacity(0.10), lineWidth: 1))
        .padding(.bottom, 46)
        .offset(y: game.virtualDockHidden ? 85 : 0)
        .animation(.spring(response: 0.32, dampingFraction: 0.84), value: game.virtualDockHidden)
    }

    private var baseDockApps: [DesktopApp] { [.mail, .documents, .terminal, .safari, .settings] }
    private var installedDockApps: [String] { Array(game.installedApps.filter { !$0.hasPrefix("brew:") }.prefix(4)) + (game.virtualMobileRunning ? ["Mobile"] : []) }

    private func dockIcon(app: DesktopApp, locked: Bool) -> some View {
        Button { game.openDesktopApp(app) } label: {
            VStack(spacing: 2) {
                ZStack(alignment: .topTrailing) {
                    RoundedRectangle(cornerRadius: 13, style: .continuous)
                        .fill(dockColor(app).opacity(game.activeDesktopApp == app ? 0.95 : 0.72))
                        .frame(width: 45, height: 45)
                        .overlay(RoundedRectangle(cornerRadius: 13).stroke(.white.opacity(0.18), lineWidth: 1))
                    Image(systemName: app.icon)
                        .font(.system(size: 22, weight: .black))
                        .foregroundStyle(app == .terminal ? .white : .white.opacity(0.95))
                        .frame(width: 45, height: 45)
                    if app == .mail && game.unreadMailCount() > 0 {
                        Text("\(game.unreadMailCount())")
                            .font(.system(size: 10, weight: .black, design: .rounded))
                            .foregroundStyle(.white)
                            .frame(width: 18, height: 18)
                            .background(.red, in: Circle())
                            .offset(x: 7, y: -7)
                    }
                }
                Circle().fill(game.activeDesktopApp == app ? .white : .clear).frame(width: 4, height: 4)
            }
        }
    }

    private func installedAppDockIcon(_ name: String) -> some View {
        Button { if name == "Mobile" { game.openDesktopApp(.mobile) } else { game.submit("run app \(name.lowercased())") } } label: {
            VStack(spacing: 2) {
                ZStack {
                    RoundedRectangle(cornerRadius: 13).fill(.green.opacity(0.26)).frame(width: 45, height: 45)
                    Image(systemName: name == "Mobile" ? "iphone" : "app.fill")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundStyle(.green)
                }
                Text(String(name.prefix(4)))
                    .font(.system(size: 7, weight: .black, design: .rounded))
                    .foregroundStyle(.white.opacity(0.65))
            }
        }
    }

    private var lockedDockIcon: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 13).fill(.white.opacity(0.045)).frame(width: 45, height: 45)
            Image(systemName: "lock.fill")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(.white.opacity(0.22))
        }
    }

    private func dockColor(_ app: DesktopApp) -> Color {
        switch app {
        case .mail: return .blue
        case .documents: return .cyan
        case .terminal: return .black
        case .safari: return .blue
        case .settings: return .gray
        case .storyLines: return .green
        case .mobile: return .green
        }
    }

    private func storyTitle(_ side: PlayerSide) -> String {
        switch side {
        case .blueTeam: return "BLUE TEAM CYBERSEC"
        case .redTeam: return "RED TEAM CYBERCRIME SANDBOX"
        case .greyTeam: return "GREY TEAM"
        case .whiteTeam: return "WHITE TEAM"
        case .blackTeam: return "BLACK TEAM SANDBOX"
        }
    }

    private func storySubtitle(_ side: PlayerSide) -> String {
        switch side {
        case .blueTeam: return "BRÁNIT. CHRÁNIT. INFRASTRUKTURU."
        case .redTeam: return "ÚTOČ, EXPERIMENTUJ, OVLÁDNI."
        case .greyTeam: return "MEZI SVĚTLEM A ŠEDEM."
        case .whiteTeam: return "ETICKÝ HACKING PRO DOBRO."
        case .blackTeam: return "ŽÁDNÁ PRAVIDLA. ŽÁDNÉ LIMITY."
        }
    }

    private func storyDescription(_ side: PlayerSide) -> String {
        switch side {
        case .blueTeam: return "Jsi součástí elitního Blue Teamu. Tvým úkolem je chránit sítě, systémy a data před kybernetickými hrozbami. Detekuj útoky, analyzuj incidenty a udržuj infrastrukturu v bezpečí."
        case .redTeam: return "Bezpečný cybercrime sandbox: pochop motivace útočníka, jeho stopu, riziko a právní důsledky. Všechno běží jen ve virtuálním světě a lab scope."
        case .greyTeam: return "Hrana mezi testem a obranou. Každý nález musí mít mitigaci, retest a čistý report."
        case .whiteTeam: return "Audit, compliance, důkazy a odpovědné zveřejnění. Hraješ za člověka, který řeší pravdu legálně."
        case .blackTeam: return "Temná sandbox linka následků. Neučí škodit v realitě, učí pochopit cenu špatných rozhodnutí."
        }
    }

    private func storyColor(_ side: PlayerSide) -> Color {
        switch side {
        case .blueTeam: return .cyan
        case .redTeam: return .red
        case .greyTeam: return .gray
        case .whiteTeam: return .white
        case .blackTeam: return .purple
        }
    }

    private func storyIcon(_ side: PlayerSide) -> String {
        switch side {
        case .blueTeam: return "shield.fill"
        case .redTeam: return "flame.fill"
        case .greyTeam: return "scale.3d"
        case .whiteTeam: return "checkmark.seal.fill"
        case .blackTeam: return "ant.fill"
        }
    }

    @ViewBuilder
    private var popupLayer: some View {
        if let popup = game.desktopPopups.last {
            VStack { Spacer(); HStack { Spacer(); alertCard(popup).padding(22) } }
        }
    }

    private func alertCard(_ popup: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("LAB ALERT")
                .font(.system(size: 14, weight: .black, design: .monospaced))
                .foregroundStyle(.red)
            Text(popup)
                .font(.system(size: 12, weight: .semibold, design: .monospaced))
                .foregroundStyle(.white)
            Button("ZAVŘÍT") { game.dismissPopup(popup) }
                .buttonStyle(MissionButtonStyle())
        }
        .padding(16)
        .frame(maxWidth: 330, alignment: .leading)
        .background(Color.black.opacity(0.92), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 18).stroke(.red.opacity(0.55), lineWidth: 1))
    }

    @ViewBuilder
    private var scoreLayer: some View {
        if let report = game.lastMissionReport {
            ZStack {
                Color.black.opacity(0.68).ignoresSafeArea()
                VStack(alignment: .leading, spacing: 12) {
                    Text("MISSION COMPLETE")
                        .font(.system(size: 24, weight: .black, design: .monospaced))
                        .foregroundStyle(.green)
                    Text(report.verdict)
                        .font(.system(size: 19, weight: .black, design: .monospaced))
                        .foregroundStyle(.white)
                    Text("Mission: \(report.missionID)")
                    Text("Score: \(report.score)/100")
                    Text("Čas: \(report.timeSeconds)s")
                    Text("Chybné příkazy: \(report.wrongCommands)")
                    Text("Virus/chaos penalizace: -\(report.virusPenalty)")
                    Text("Bonus archiv/instalace: +\(report.bonus)")
                    Text("Vyhodnocení simuluje realitu: rychlost reakce, správnost příkazů, práce s důkazy a následky špatných rozhodnutí.")
                        .foregroundStyle(.yellow)
                    HStack {
                        Button("POKRAČOVAT") { game.dismissMissionReport() }
                            .buttonStyle(MissionButtonStyle())
                        Button("OTEVŘÍT MAIL") { game.dismissMissionReport(); game.openDesktopApp(.mail) }
                            .buttonStyle(MissionButtonStyle())
                    }
                }
                .font(.system(size: 13, weight: .semibold, design: .monospaced))
                .foregroundStyle(.white.opacity(0.9))
                .padding(22)
                .frame(maxWidth: 460, alignment: .leading)
                .background(Color.black.opacity(0.92), in: RoundedRectangle(cornerRadius: 24, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(.green.opacity(0.48), lineWidth: 1))
            }
        }
    }
}

struct MissionButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 12, weight: .black, design: .monospaced))
            .foregroundStyle(.black)
            .padding(.horizontal, 14)
            .padding(.vertical, 10)
            .background(.green.opacity(configuration.isPressed ? 0.72 : 1), in: Capsule())
    }
}

struct SmallNeonButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 9, weight: .black, design: .monospaced))
            .foregroundStyle(.white)
            .padding(.horizontal, 9)
            .padding(.vertical, 7)
            .background(.white.opacity(configuration.isPressed ? 0.13 : 0.08), in: RoundedRectangle(cornerRadius: 8, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.green.opacity(0.28), lineWidth: 1))
    }
}

struct StoryContinueButtonStyle: ButtonStyle {
    let enabled: Bool
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 12, weight: .black, design: .monospaced))
            .foregroundStyle(enabled ? .green : .white.opacity(0.28))
            .padding(.horizontal, 18)
            .padding(.vertical, 10)
            .background(.black.opacity(0.35), in: RoundedRectangle(cornerRadius: 10, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(enabled ? .green.opacity(0.85) : .white.opacity(0.12), lineWidth: 1))
    }
}

struct VirtualMobileView: View {
    @EnvironmentObject private var game: GameStore

    var body: some View {
        HStack(spacing: 18) {
            RoundedRectangle(cornerRadius: 36, style: .continuous)
                .fill(Color.black.opacity(0.86))
                .frame(width: 180, height: 330)
                .overlay(
                    VStack(spacing: 12) {
                        Capsule().fill(Color.white.opacity(0.35)).frame(width: 56, height: 5)
                        Text("iPhone-lab")
                            .font(.system(size: 14, weight: .black, design: .monospaced))
                            .foregroundStyle(.green)
                        Text(game.virtualMobileRunning ? "ONLINE" : "OFFLINE")
                            .font(.system(size: 11, weight: .black, design: .monospaced))
                            .foregroundStyle(game.virtualMobileRunning ? .green : .red)
                        Spacer()
                        Text("MFA")
                            .font(.system(size: 26, weight: .black, design: .monospaced))
                            .foregroundStyle(.white)
                        Text("042913")
                            .font(.system(size: 30, weight: .black, design: .monospaced))
                            .foregroundStyle(.yellow)
                        Text("Simulovaný kód pro výuku identity. Nepoužívej reálné kódy.")
                            .font(.system(size: 10, weight: .bold, design: .monospaced))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.white.opacity(0.65))
                        Spacer()
                    }
                    .padding(18)
                )
                .overlay(RoundedRectangle(cornerRadius: 36).stroke(.green.opacity(0.42), lineWidth: 1))

            VStack(alignment: .leading, spacing: 12) {
                Text("VIRTUÁLNÍ MOBIL")
                    .font(.system(size: 22, weight: .black, design: .monospaced))
                    .foregroundStyle(.white)
                Text("Používá se pro MFA, mobile OS úkoly, SMS-sim, notifikace a ověření identity v příběhu.")
                    .font(.system(size: 13, weight: .semibold, design: .monospaced))
                    .foregroundStyle(.white.opacity(0.78))
                Text("Terminálové příkazy:")
                    .font(.system(size: 13, weight: .black, design: .monospaced))
                    .foregroundStyle(.green)
                Text("open mobile\nmobile launch authenticator\nvpn status\nopen terminal")
                    .font(.system(size: 12, weight: .bold, design: .monospaced))
                    .foregroundStyle(.yellow)
                Button("OTEVŘÍT TERMINÁL") { game.openDesktopApp(.terminal) }
                    .buttonStyle(MissionButtonStyle())
            }
            .padding(22)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black.opacity(0.78), in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 24).stroke(.green.opacity(0.28), lineWidth: 1))
        .padding(20)
    }
}
