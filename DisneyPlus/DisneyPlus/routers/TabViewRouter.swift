//
//  TabViewRouter.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/21.
//

import SwiftUI

final class TabViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .home
}

extension TabViewRouter {
    
    enum Page {
        case home
        case search
        case downloads
        case profile
    }
}
