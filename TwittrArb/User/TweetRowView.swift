
import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack (alignment: .trailing){
            HStack(alignment: .center, spacing: 1){
                VStack{
                    HStack(alignment: .center, spacing: 1){
                        Text("4w")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("@XM2HL")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("ممدوح الرشيدي")
                            .font(.subheadline).bold()
                            .padding(1)
                    }
                    Text("rr")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 150)
                        .frame(width: 200, height: 20)
                }
                .padding(2)
                    HStack{
                        Image("Sicons-Basic-Round-Social-Twitter.512")
                            .resizable()
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                            .frame(width: 40, height: 40)
                    
                    
                }
            
            }
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
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
