import SwiftUI

struct GameTerminalView: View {
    @EnvironmentObject private var game: GameStore
    @FocusState private var isInputFocused: Bool

    var body: some View {
        VStack(spacing: 10) {
            header

            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 6) {
                        ForEach(game.terminalLines) { line in
                            Text(line.text)
                                .font(.system(size: 13, weight: line.kind == .command ? .bold : .regular, design: .monospaced))
                                .foregroundStyle(color(for: line.kind))
                                .textSelection(.enabled)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .id(line.id)
                        }
                    }
                    .padding(14)
                }
                .background(.black.opacity(0.72), in: RoundedRectangle(cornerRadius: 22, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 22, style: .continuous)
                        .stroke(.green.opacity(0.32), lineWidth: 1)
                )
                .onChange(of: game.terminalLines) { _, lines in
                    guard let last = lines.last else { return }
                    withAnimation(.easeOut(duration: 0.15)) {
                        proxy.scrollTo(last.id, anchor: .bottom)
                    }
                }
            }

            commandInput
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .onAppear { Task { @MainActor in isInputFocused = true } }
        .onTapGesture { isInputFocused = true }
    }

    private var header: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 3) {
                Text("TERMINAL OPS")
                    .font(.system(size: 16, weight: .black, design: .monospaced))
                    .foregroundStyle(.white)
                Text("LVL \(game.profile.level) • \(game.profile.progressPercent)% • \(game.profile.mode.rawValue.uppercased()) • \(game.profile.side?.shortCode ?? "---")")
                    .font(.system(size: 11, weight: .semibold, design: .monospaced))
                    .foregroundStyle(.green.opacity(0.9))
            }
            Spacer()
            Button("HELP") {
                game.submit("help")
            }
            .font(.system(size: 12, weight: .black, design: .monospaced))
            .foregroundStyle(.black)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(.green, in: Capsule())
        }
        .padding(14)
        .background(Color.black.opacity(0.70), in: RoundedRectangle(cornerRadius: 22, style: .continuous))
    }

    private var commandInput: some View {
        HStack(spacing: 8) {
            Text("$")
                .font(.system(size: 16, weight: .black, design: .monospaced))
                .foregroundStyle(.green)

            TextField("help", text: $game.currentInput)
                .font(.system(size: 16, weight: .bold, design: .monospaced))
                .foregroundStyle(.white)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .focused($isInputFocused)
                .onSubmit {
                    game.submitCommand()
                    isInputFocused = true
                }

            Button {
                game.submitCommand()
                isInputFocused = true
            } label: {
                Text("ENTER")
                    .font(.system(size: 12, weight: .black, design: .monospaced))
            }
            .foregroundStyle(.green)
        }
        .padding(14)
        .background(.black.opacity(0.8), in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(.green.opacity(0.35), lineWidth: 1)
        )
    }

    private func color(for kind: TerminalLineKind) -> Color {
        switch kind {
        case .system: return .white.opacity(0.92)
        case .command: return .green
        case .output: return .white.opacity(0.78)
        case .warning: return .yellow
        case .success: return .green.opacity(0.95)
        }
    }
}
