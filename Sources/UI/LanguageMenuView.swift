import SwiftUI

struct LanguageMenuView: View {
    @EnvironmentObject private var game: GameStore

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            GlassPanel {
                VStack(spacing: 18) {
                    Text(game.language.text(.appTitle))
                        .font(.system(size: 38, weight: .black, design: .monospaced))
                        .foregroundStyle(.white)
                        .minimumScaleFactor(0.7)

                    Text(game.language.text(.chooseLanguage))
                        .font(.system(size: 16, weight: .semibold, design: .monospaced))
                        .foregroundStyle(.white.opacity(0.74))

                    ForEach(AppLanguage.allCases) { language in
                        Button {
                            game.chooseLanguage(language)
                        } label: {
                            HStack {
                                Text(language.title)
                                Spacer()
                                Text(language.rawValue.uppercased())
                            }
                            .font(.system(size: 16, weight: .bold, design: .monospaced))
                            .foregroundStyle(.white)
                            .padding()
                            .background(.white.opacity(0.08), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 18, style: .continuous)
                                    .stroke(.green.opacity(0.45), lineWidth: 1)
                            )
                        }
                        .buttonStyle(.plain)
                    }

                    Text(game.language.text(.safeLab))
                        .font(.system(size: 12, weight: .medium, design: .monospaced))
                        .foregroundStyle(.green.opacity(0.9))
                        .multilineTextAlignment(.center)
                        .padding(.top, 4)
                }
            }
            .padding(.horizontal, 22)

            Spacer()
        }
    }
}
