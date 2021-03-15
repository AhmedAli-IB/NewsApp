//
//  DiscriptionContentView.swift
//  NewsApp
//
//  Created by Ahmed Ali on 15/03/2021.
//

import SwiftUI

// MARK: - DiscriptionContentView
/// Content of title, source and discription
///
struct DiscriptionContentView: View {
    
    let news: News

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                
                VStack(alignment: .leading) {
                    Text(news.source?.name?.uppercased() ?? "" )
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(news.title?.capitalized  ?? "")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                }
                Text(news.articleDescription?.capitalized  ?? "")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
    }
}
