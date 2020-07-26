
import SwiftUI

public struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    
    public init(startAngle: Angle,
                endAngle: Angle,
                clockwise: Bool) {
        self.startAngle = startAngle
        self.endAngle = endAngle
        self.clockwise = clockwise
    }
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        return path
    }
    
}
