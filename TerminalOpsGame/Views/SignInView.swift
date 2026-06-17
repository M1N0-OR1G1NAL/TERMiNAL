import AuthenticationServices
import SwiftUI

struct SignInView: View {
    @EnvironmentObject private var game: GameStore

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            GlassPanel {
                VStack(spacing: 18) {
                    VStack(spacing: 8) {
                        Text(game.language.text(.signInTitle))
                            .font(.system(size: 34, weight: .black, design: .monospaced))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.62)

                        Text("Tron1k's Games")
                            .font(.system(size: 14, weight: .bold, design: .monospaced))
                            .foregroundStyle(.green.opacity(0.95))

                        Text(game.language.text(.signInSubtitle))
                            .font(.system(size: 13, weight: .semibold, design: .monospaced))
                            .foregroundStyle(.white.opacity(0.74))
                            .multilineTextAlignment(.center)
                    }

                    SignInWithAppleButton(.continue) { request in
                        request.requestedScopes = [.fullName, .email]
                    } onCompletion: { result in
                        switch result {
                        case .success:
                            game.continueAfterSignIn(provider: "apple")
                        case .failure:
                            game.continueAfterSignIn(provider: "local")
                        }
                    }
                    .signInWithAppleButtonStyle(.white)
                    .frame(height: 48)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))

                    Button {
                        game.continueAfterSignIn(provider: "local")
                    } label: {
                        Text(game.language.text(.continueOffline))
                            .font(.system(size: 14, weight: .black, design: .monospaced))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                            .foregroundStyle(.green)
                            .background(.black.opacity(0.62), in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .stroke(.green.opacity(0.48), lineWidth: 1)
                            )
                    }
                    .buttonStyle(.plain)

                    Text(game.language.text(.safeLab))
                        .font(.system(size: 11, weight: .medium, design: .monospaced))
                        .foregroundStyle(.green.opacity(0.82))
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: 440)
            }
            .padding(.horizontal, 22)

            Spacer()
        }
    }
}
