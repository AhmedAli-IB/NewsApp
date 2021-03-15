//
//  CardView.swift
//  NewsApp
//
//  Created by Ahmed Ali on 09/03/2021.
//

import SwiftUI

struct CardView: View {
    
    let news: News
    
    var body: some View {
        
        ZStack (alignment: .top) {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 10)
                .padding(.all, 20)
            VStack {
                
                ImageContentView(imageUrl: news.urlToImage ?? "", width: nil, height: 350)
                DiscriptionContentView(news: news)
                    .padding()
            }
            .padding(.all, 20)
        }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
