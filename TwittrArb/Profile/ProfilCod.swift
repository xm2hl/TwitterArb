extension ProfileView {
    var headerVieew: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()//جعل الشاشه كامله
            
            VStack{
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }
            }
        }
        .frame(height: 96)
    }
    var actionButtons: some View {
        HStack{
            if let data = data, let uiimage = UIImage(data: data){
                
                Image(uiImage: uiimage)
                    .resizable()
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                    .frame(width: 72, height: 72)

        }
            
            Spacer()
            PhotosPicker(selection: $selectedItems, maxSelectionCount: 1, matching: .images) {
                VStack{
                    Image("Sicons-Basic-Round-Social-Twitter.512")
                        .resizable()
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                        .frame(width: 72, height: 72)
                        .padding(.trailing, 100)
                        .offset(x: 10, y: -30)
                }
            }
            .onChange(of: selectedItems) { newValue in guard let item = selectedItems.first else {return
                
                
            }
                item.loadTransferable(type: Data.self) { result in
                    switch result {
                    case .success(let data):
                        if let data = data {
                            self.data = data
                           
                        }else{
                            print("data is nil")
                        }
                    case .failure(let failure):
                        fatalError("\(failure)")

                        }
                    }
                }
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button {
                //
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 0.75))
            }

            
        }
        .padding(.trailing)
    }
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
               Text("Mamdoh AL-Rashidi")
                    .font(.title).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@xm2hl")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Programmer SwiftUI")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 40){
                HStack{
                   Image(systemName: "mappin.and.ellipse")
                    Text("Riyadh, KSA")
                }
                HStack{
                    Image(systemName: "link")
                     Text("https://t.snapchat.com/dWITSNza")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack(spacing: 24){
                HStack(spacing: 4){
                    
                    Text("599")
                        .font(.subheadline)
                        .bold()
                    
                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                HStack(spacing: 4){
                    Text("3.2M")
                        .font(.subheadline)
                        .bold()
                    
                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.vertical)
        }
    }
}

