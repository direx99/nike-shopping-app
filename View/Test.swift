import SwiftUI

struct Test: View {
    @State private var rotationAngle: Double = 0.0
    
    var body: some View {
            VStack {
                Image("shoe")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .rotationEffect(.degrees(rotationAngle), anchor: .center)
                    .animation(.easeInOut(duration: 1.0))
            }
            .onAppear {
                withAnimation {
                    rotationAngle += 45.0
                }
            }
        }
    }

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
