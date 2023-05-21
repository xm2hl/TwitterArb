import SwiftUI
import YouTubePlayerKit

struct HomePagView: View {
    var body: some View {
            ScrollView {
                LazyVStack {
//                    ForEach(0...20, id: \.self) { _ in
                    TweetRowView(ttext: .init(name: "mamdouh", imagUser: "Sicons-Basic-Round-Social-Twitter.512", UserName: "@xm2hl", text: "فيديو يشرح سويفت يو اي"), vvdi: .init(Video: "https://www.youtube.com/watch?v=gm7Xct50CFo"))
                    TweetRowView1(ttext: .init(name: "ahmed32", imagUser: "kallll", UserName: "@ahmed", text: "صباح الخير"))
                    TweetRowView2(ttext: .init(name: "talal", imagUser: "narott", UserName: "@talal908", text: "hdflknvkwnefknvskdnfknvklsndknv"))
                    TweetRowView2(ttext: .init(name: "mohammed", imagUser: "sdfjndfd", UserName: "@mohammed_3", text: "ksdkfsno;wek"))
                    
                    

//                    }
                }
            }
            
        }
    }
struct HomePagView_Previews: PreviewProvider {
    static var previews: some View {
        HomePagView()
    }
}
