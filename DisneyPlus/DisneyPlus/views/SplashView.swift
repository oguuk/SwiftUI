//
//  SplashView.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/21.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isAppLaunchingReady = false
    
    var body: some View {
        ZStack {
            Color.blue
            VStack {
                if isAppLaunchingReady {
                    ContentView()
                } else {
                    SplashRepresentableView()
                        .frame(width: 300, height: 300)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation {
                        self.isAppLaunchingReady = true
                    }
                }
            }
        }
    }
}
