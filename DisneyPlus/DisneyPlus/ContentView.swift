//
//  ContentView.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/21.
//

import SwiftUI

struct ContentView: View {
    
    let homeView = HomeView()
    let searchView = SearchView()
    let downloadView = DownloadView()
    let profileView = ProfileView()
    
    @StateObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: -10) {
                getTabPage()
                getTabs(geo: geo)
                
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    @ViewBuilder //  반환하고 싶은 View 타입이 여러 종류일때
    private func getTabPage() -> some View {
        switch tabViewRouter.currentPage {
        case .home:
            homeView
        case .search:
            searchView
        case .downloads:
            downloadView
        case .profile:
            profileView    
        }
    }
    
    private func getTabs(geo: GeometryProxy) -> some View {
        return HStack {
            TabBarIcon(
                tabViewRouter: tabViewRouter,
                page: .home,
                geo: geo,
                systemIconName: "house",
                tabName: "Home")
            TabBarIcon(
                tabViewRouter: tabViewRouter,
                page: .search,
                geo: geo,
                systemIconName: "magnifyingglass",
                tabName: "Search")
            TabBarIcon(
                tabViewRouter: tabViewRouter,
                page: .downloads,
                geo: geo,
                systemIconName: "square.and.arrow.down",
                tabName: "Downloads")
            TabBarIcon(
                tabViewRouter: tabViewRouter,
                page: .profile,
                geo: geo,
                systemIconName: "person.circle",
                tabName: "Profile")
        }
        .frame(width: geo.size.width, height: 60)
        .padding(.bottom, 20)
        .background(Color.white.shadow(radius: 2))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabViewRouter: TabViewRouter())
            .preferredColorScheme(.dark)
    }
}
