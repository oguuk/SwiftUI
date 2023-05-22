//
//  HomeView.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Home")
                .foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
