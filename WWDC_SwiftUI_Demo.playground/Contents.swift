
import SwiftUI
import PlaygroundSupport

// example from 
// https://www.simpleswiftguide.com/how-to-build-a-circular-progress-bar-in-swiftui/

struct ContentView: View {
    @State var progressValue: Float = 0.0
    var body: some View {
        ZStack {
            Color.yellow
            .opacity(0.2)
            
            VStack {
                ProgressView(progress: self.$progressValue)
                .frame(width: 150.0, height: 150.0)
                .padding(40.0)
                
                Button(action: {
                    self.incrementProgress()
                }) {
                    Text("increment")
                    .padding(15)
                        .overlay(RoundedRectangle(cornerRadius: 15.0).stroke(lineWidth: 2.0))
                    
                }
                
                Spacer()
            }
        }
    }
    
    private func incrementProgress() {
        let randomValue = Float([0.012, 0.022, 0.033, 0.016].randomElement()!)
        self.progressValue += randomValue
    }
}

struct Preview: View {
    var body: some View {
        Group {
            ContentView()
            //ProgressView()
            //.environment(\.colorScheme, .dark)
        }
    }
    
}

PlaygroundPage.current.setLiveView(Preview())

