
import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex){
            HomePagView()
                .onTapGesture{
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            HomePagView()
                .onTapGesture{
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            HomePagView()
                .onTapGesture{
                    self.selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(2)
            HomePagView()
                .onTapGesture{
                    self.selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(3)
        }
        
    }
}
struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
