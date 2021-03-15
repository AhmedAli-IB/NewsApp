//
//  NewsDetailsViewModel.swift
//  NewsApp
//
//  Created by Ahmed Ali on 15/03/2021.
//

import Foundation

// MARK: - NewsDetailsViewModel
//
class NewsDetailsViewModel: ObservableObject {
    
    @Published private(set) var news: News
    
    init(news: News) {
        self.news = news
    }

}
