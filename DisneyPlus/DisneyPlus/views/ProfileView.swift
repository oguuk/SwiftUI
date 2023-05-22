//
//  ProfileView.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        GradientBackgroundView()
        Text("Profile")
            .foregroundColor(.white)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
