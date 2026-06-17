import SwiftUI

struct SideSelectionView: View {
    @EnvironmentObject private var game: GameStore

    private let columns = [GridItem(.adaptive(minimum: 150), spacing: 12)]

    var body: some View {
        VStack(spacing: 16) {
            Text(game.language.text(.chooseSide))
                .font(.system(size: 25, weight: .black, design: .monospaced))
                .foregroundStyle(.white)
                .padding(.top, 28)

            Picker("Mode", selection: Binding(
                get: { game.profile.mode },
                set: { game.profile.mode = $0 }
            )) {
                Text(game.language.text(.singleplayer)).tag(GameMode.singleplayer)
                Text(game.language.text(.multiplayer)).tag(GameMode.multiplayer)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 20)

            Text(game.language == .cs
                 ? "Základ: Red Team cybercrime simulace / Blue Team cybersec ochrana dat. Grey, Black a White se odemykají levelem."
                 : "Base: Red Team cybercrime simulation / Blue Team cybersec data defense. Grey, Black, and White unlock by level.")
                .font(.system(size: 12, weight: .semibold, design: .monospaced))
                .foregroundStyle(.green.opacity(0.9))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)

            ScrollView {
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(PlayerSide.allCases) { side in
                        let unlocked = game.isSideUnlocked(side)

                        Button {
                            game.chooseSide(side)
                        } label: {
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text(side.shortCode)
                                        .font(.system(size: 13, weight: .black, design: .monospaced))
                                        .padding(.horizontal, 9)
                                        .padding(.vertical, 5)
                                        .background((unlocked ? Color.green : Color.gray).opacity(0.22), in: Capsule())

                                    Spacer()

                                    Text(unlocked ? "OPEN" : "LOCK")
                                        .font(.system(size: 11, weight: .black, design: .monospaced))
                                        .foregroundStyle(unlocked ? .green : .orange)
                                }

                                Text(side.displayName)
                                    .font(.system(size: 17, weight: .black, design: .monospaced))
                                    .foregroundStyle(unlocked ? .white : .white.opacity(0.45))
                                    .multilineTextAlignment(.leading)

                                Text(side.localizedDescription(game.language))
                                    .font(.system(size: 12, weight: .medium, design: .monospaced))
                                    .foregroundStyle(unlocked ? .white.opacity(0.72) : .white.opacity(0.4))
                                    .lineLimit(5)
                                    .multilineTextAlignment(.leading)

                                Spacer(minLength: 0)

                                Text(side.lockText(game.language))
                                    .font(.system(size: 11, weight: .black, design: .monospaced))
                                    .foregroundStyle(unlocked ? .green : .orange)
                            }
                            .frame(maxWidth: .infinity, minHeight: 174, alignment: .topLeading)
                            .padding(14)
                            .background(Color.black.opacity(0.68), in: RoundedRectangle(cornerRadius: 24, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 24, style: .continuous)
                                    .stroke(unlocked ? .green.opacity(0.26) : .orange.opacity(0.22), lineWidth: 1)
                            )
                            .opacity(unlocked ? 1.0 : 0.62)
                        }
                        .buttonStyle(.plain)
                        .disabled(!unlocked)
                    }
                }
                .padding(.horizontal, 18)
                .padding(.bottom, 24)
            }
        }
    }
}
