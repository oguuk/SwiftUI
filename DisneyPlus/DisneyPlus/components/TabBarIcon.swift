//
//  TabBarIcon.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/21.
//

import SwiftUI

struct TabBarIcon: View {
    
    @StateObject var tabViewRouter: TabViewRouter
    
    let page: TabViewRouter.Page
    let geo: GeometryProxy
    let systemIconName: String
    let tabName: String
    
    private var width: CGFloat {
        geo.size.width / 4
    }
    
    private var height: CGFloat {
        geo.size.height / 56
    }
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            
            Text(tabName)
                .font(.footnote)
        }
        .foregroundColor(tabViewRouter.currentPage == page ? .black : .gray)
        .padding(.horizontal, -4)
        .onTapGesture {
            tabViewRouter.currentPage = page
        }
    }
}

struct TabBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geo in
            TabBarIcon(tabViewRouter: TabViewRouter(),
                       page: .home,
                       geo: geo,
                       systemIconName: "house",
                       tabName: "Home")
            .preferredColorScheme(.dark)
        }
    }
}
