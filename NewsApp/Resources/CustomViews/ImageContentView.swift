//
//  ImageContentView.swift
//  NewsApp
//
//  Created by Ahmed Ali on 15/03/2021.
//

import SwiftUI
import Kingfisher
// MARK: - DiscriptionContentView
/// Content of Image loaded by kingfisher and placeholder
///
struct ImageContentView: View {
    
    let imageUrl: String
    let width: CGFloat?
    let height: CGFloat
    
    var body: some View {
        
        KFImage(URL(string: imageUrl ))
            .placeholder {
                Image(Asset.placeholder.name)
                    .resizable()
                    .frame(width: width, height: height)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
            }
            .resizable()
            .frame(width: width, height: height)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20, corners: [.topLeft, .topRight])
    }
}
