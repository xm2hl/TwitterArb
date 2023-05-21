
import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 4
    var body: some View {
        TabView(selection: $selectedIndex){
            Maintenance()
                .onTapGesture{
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(0)
            Maintenance()
                .onTapGesture{
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(1)
            Maintenance()
                .onTapGesture{
                    self.selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "mic")
                }.tag(2)
            ExploreView()
                .onTapGesture{
                    self.selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(3)
            HomePagView()
                .onTapGesture{
                    self.selectedIndex = 4
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(4)
        }
        
    }
}
struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
