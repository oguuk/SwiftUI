//
//  GradientBackgroundView.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/22.
//

import SwiftUI

struct GradientBackgroundView: View {
    var body: some View {
        LinearGradient(gradient: .init(colors: [.cyan, .white]),
                       startPoint: .leading,
                       endPoint: .trailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct GradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundView()
    }
}
