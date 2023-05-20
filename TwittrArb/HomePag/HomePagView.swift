import SwiftUI

struct HomePagView: View {
    var body: some View {
            ScrollView {
                LazyVStack {
                    ForEach(0...20, id: \.self) { _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            
        }
    }
struct HomePagView_Previews: PreviewProvider {
    static var previews: some View {
        HomePagView()
    }
}
