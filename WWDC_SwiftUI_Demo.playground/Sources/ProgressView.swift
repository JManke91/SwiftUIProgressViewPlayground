
import SwiftUI
import Foundation

public struct ProgressView: View {
    @Binding var progress: Float
    public init(progress: Binding<Float>) {
        self._progress = progress
    }
    public var body: some View {
        
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 20.0)
                .opacity(0.2)
                    .foregroundColor(.red)
                
                Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.red)
                .rotationEffect(Angle(degrees: 270))
                .animation(.linear)
                
                Text(String(format: "%.0f %%", min(self.progress, 1.0) * 100))
                .font(.largeTitle)
                .bold()
            }
        }
    }
}

