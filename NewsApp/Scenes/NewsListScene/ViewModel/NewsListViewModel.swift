//
//  NewsListViewModel.swift
//  NewsApp
//
//  Created by Ahmed Ali on 08/03/2021.
//

import Foundation
import Combine

// MARK: - NewsViewModel
//
class NewsViewModel: ObservableObject {
    
    // MARK: - Properties
    //
    @Published private(set) var state = ViewState.loading
    private(set) var news = [News]()
    
    private var isLoadingPage = false
    private var currentPage = 1
    
    private var subscriptions = Set<AnyCancellable>()
    private let newsUseCase: NewsUseCaseType
    
    // MARK: - Init
    //
    init(newsUseCase: NewsUseCaseType = NewsUseCase(networkService: NetworkService())) {
            self.newsUseCase = newsUseCase
    }
}
// MARK: - Handlers
//
extension NewsViewModel {

    /// Call when view load at first time
    ///
    func viewDidLoad() {
        loadNews()
    }

    /// Load more news if reach end list
    /// - Parameter item: next  item appear in the list
    //
    func loadMoreContentIfNeeded(currentItem item: News) {
        if news.last?.id == item.id {
            loadNews()
        }
    }
    
    /// Call when  user need to refresh content
    func pullToRefresh() {
        resetModel()
        loadNews()
    }
}
// MARK: - Private Handlers
//
private extension NewsViewModel {
    
    /// Update our news model
    /// - Parameter news: new news returned from news use case
    ///
    func updateNewsModel(_ news: ([News])) {
        self.news.append(contentsOf: news)
        state = .loaded
        currentPage += 1
    }
    
    func resetModel() {
        currentPage = 1
        news = []
    }
    
    /// Load News from News case with infinite scroll
    ///
    func loadNews() {
        
        guard !isLoadingPage && news.count < Constants.maxResults else {
            return
        }
        
        isLoadingPage = true
        state = .loading
        
        newsUseCase.loadNews(page: currentPage, pageSize: Constants.pageSize)
            .sink { [weak self] (completion) in
                
                guard let self = self else { return }
                
                switch completion {
                case let .failure(error):
                    self.state = .failed(error)
                    self.isLoadingPage = false
                case .finished:
                    self.isLoadingPage = false
                    self.state = .loaded
                }
            } receiveValue: { [weak self] (result) in
                guard let self = self else { return }
                switch result {
                case .success(let news):
                
                    self.updateNewsModel(news)
                    self.isLoadingPage = false
                    
                case .failure(let error):
                    self.state = .failed(error)
                    self.isLoadingPage = false
                }
            }
            .store(in: &subscriptions)
    }
}

// MARK: - Constants
//
extension NewsViewModel {
    enum Constants {
        // business require get 10 contnent per request
        static let pageSize = 10
        // free api limit
        static let maxResults = 100
    }
}
