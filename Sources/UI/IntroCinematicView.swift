import SwiftUI

struct IntroCinematicView: View {
    @EnvironmentObject private var game: GameStore
    @State private var seated = false
    @State private var screenOn = false
    @State private var zoom = false
    @State private var terminalBoot = false

    var body: some View {
        ZStack {
            VStack(spacing: 24) {
                Spacer()

                ZStack(alignment: .bottom) {
                    RoundedRectangle(cornerRadius: 28, style: .continuous)
                        .fill(.black.opacity(0.88))
                        .frame(width: zoom ? 720 : 270, height: zoom ? 470 : 180)
                        .overlay(
                            RoundedRectangle(cornerRadius: 28, style: .continuous)
                                .stroke(screenOn ? .green.opacity(0.9) : .white.opacity(0.18), lineWidth: screenOn ? 2 : 1)
                        )
                        .shadow(color: screenOn ? .green.opacity(0.45) : .black.opacity(0.7), radius: screenOn ? 34 : 20)
                        .overlay {
                            VStack(alignment: .leading, spacing: 6) {
                                Text(screenOn ? "TRON1K BIOS // OK" : "")
                                Text(terminalBoot ? "$ boot terminal_ops --safe-lab" : "")
                                Text(terminalBoot ? "loading player profile…" : "")
                                Text(terminalBoot ? "opening command interface…" : "")
                            }
                            .font(.system(size: zoom ? 24 : 11, weight: .bold, design: .monospaced))
                            .foregroundStyle(.green)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding(zoom ? 34 : 16)
                        }

                    Capsule()
                        .fill(.white.opacity(0.12))
                        .frame(width: zoom ? 220 : 110, height: zoom ? 18 : 10)
                        .offset(y: zoom ? 48 : 25)
                }
                .scaleEffect(seated ? 1.06 : 0.86)
                .animation(.easeInOut(duration: 1.0), value: seated)
                .animation(.easeInOut(duration: 1.0), value: screenOn)
                .animation(.easeInOut(duration: 1.3), value: zoom)

                Text(game.language.text(.loading))
                    .font(.system(size: 14, weight: .bold, design: .monospaced))
                    .foregroundStyle(.white.opacity(0.82))

                ProgressView()
                    .tint(.green)
                    .scaleEffect(1.2)

                Spacer()
            }
            .padding()
        }
        .task {
            try? await Task.sleep(nanoseconds: 350_000_000)
            await MainActor.run { seated = true }
            try? await Task.sleep(nanoseconds: 650_000_000)
            await MainActor.run { screenOn = true }
            try? await Task.sleep(nanoseconds: 600_000_000)
            await MainActor.run { terminalBoot = true }
            try? await Task.sleep(nanoseconds: 950_000_000)
            await MainActor.run { zoom = true }
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            await MainActor.run { game.finishIntro() }
        }
    }
}
