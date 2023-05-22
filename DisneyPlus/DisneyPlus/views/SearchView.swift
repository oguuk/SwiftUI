//
//  SearchView.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        GradientBackgroundView()
        Text("Search")
            .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
