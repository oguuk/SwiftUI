//
//  SplashRepresentableView.swift
//  DisneyPlus
//
//  Created by 오국원 on 2023/05/21.
//

import SwiftUI
import SwiftyGif
import SnapKit

struct SplashRepresentableView: UIViewRepresentable {
    
    private let gifName = "disneyGIF.gif"
    
    func makeUIView(context: Context) -> some UIView {
        let view: UIView = .init()
        
        do {
            let gif: UIImage = try .init(gifName: gifName)
            let imageView: UIImageView = .init(gifImage: gif, loopCount: 1)
            view.addSubview(imageView)
            imageView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
        } catch {
            print("error occured: \(error.localizedDescription)")
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
