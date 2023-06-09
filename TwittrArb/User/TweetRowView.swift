
import SwiftUI


struct TweetRowView: View {
    let ttext: LetView
    let vvdi: YouTubeView
    var body: some View {
        VStack (alignment: .trailing){
            HStack{
                
                    HStack(alignment: .center, spacing: 1){
                        Text("4w")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text(ttext.UserName)
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text(ttext.name)
                            .font(.subheadline).bold()
                            .padding(1)
                }
                .padding(2)
                    HStack{
                        Image(ttext.imagUser)
                            .resizable()
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(lineWidth: 0.5))
                            .frame(width: 40, height: 40)
                            .padding(.leading, 2)
                            .padding(.trailing, 10)
                }
            }
            VStack{
                Text(ttext.text)
                    .padding(.leading, 200)
                    .padding(.bottom, 50)
                    .font(.subheadline)
                YouTubeView(Video: "jhjkv")
                    .frame(width: 300, height: 200)
            
                HStack{
                    Button {
                        // action goes here
                    } label: {
                        Image(systemName: "tray.and.arrow.up")
                            .font(.subheadline)
                    }
                    Spacer()
                    
                    Button {
                        // action goes here
                    } label: {
                        Image(systemName: "chart.bar.xaxis")
                            .font(.subheadline)
                    }
                    Spacer()
                    
                    Button {
                        // action goes here
                    } label: {
                        Image(systemName: "heart")
                            .font(.subheadline)
                    }
                    Spacer()
                    
                    Button {
                        // action goes here
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                            .font(.subheadline)
                    }
                    Spacer()
                    
                    Button {
                        // action goes here
                    } label: {
                        Image(systemName: "message")
                            .font(.subheadline)
                    }
                    
                }
            }
            .padding(.trailing, 55)
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.vertical, 5)
        .padding(.horizontal, 20)
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView(ttext: .init(name: "mamdouh", imagUser: "Sicons-Basic-Round-Social-Twitter.512", UserName: "xm2hl", text: "ttiadkvld"), vvdi: .init(Video: "https://www.youtube.com/watch?v=gpLBMsyjZc0"))
    }
}
