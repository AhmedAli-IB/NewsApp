//
//  News.swift
//  NewsApp
//
//  Created by Ahmed Ali on 08/03/2021.
//

import Foundation

// MARK: - ArticleModel
//
struct NewsModel: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [News]?
}

// MARK: - Article
//
struct News: Codable, Identifiable {
    var id = UUID()
    let source: Source?
    let author, title, articleDescription: String?
    let url: String?
    let urlToImage: String?
//    let publishedAt: Date?
    let content: String?

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, content
    }
}

// MARK: - Source
//
struct Source: Codable {
    let id: String?
    let name: String?
}
