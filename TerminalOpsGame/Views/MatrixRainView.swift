import SwiftUI

struct MatrixRainView: View {
    var isAnimated: Bool = true

    var body: some View {
        GeometryReader { geo in
            let columns = max(8, min(22, Int(geo.size.width / 30)))
            ZStack {
                Color.black
                ForEach(0..<columns, id: \.self) { column in
                    MatrixColumn(column: column, height: geo.size.height, isAnimated: isAnimated)
                        .position(x: CGFloat(column) * 28 + 10, y: geo.size.height / 2)
                }
            }
            .overlay(Color.black.opacity(0.42))
        }
    }
}

private struct MatrixColumn: View {
    let column: Int
    let height: CGFloat
    let isAnimated: Bool

    @State private var offset: CGFloat = -260

    var body: some View {
        VStack(spacing: 9) {
            ForEach(0..<34, id: \.self) { row in
                Text(((row + column) % 2 == 0) ? "1" : "0")
                    .font(.system(size: 11, weight: .medium, design: .monospaced))
                    .foregroundStyle(Color.green.opacity(opacity(row)))
            }
        }
        .offset(y: isAnimated ? offset : CGFloat((column * 13) % 90) - 45)
        .onAppear {
            guard isAnimated else { return }
            let delay = Double(column % 8) * 0.10
            let duration = Double(7 + (column % 6))
            offset = -height
            withAnimation(.linear(duration: duration).repeatForever(autoreverses: false).delay(delay)) {
                offset = height
            }
        }
    }

    private func opacity(_ row: Int) -> Double {
        max(0.12, 0.9 - Double(row) / 48.0)
    }
}
