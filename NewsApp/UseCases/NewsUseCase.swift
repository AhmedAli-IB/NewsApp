//
//  NewsUseCase.swift
//  NewsApp
//
//  Created by Ahmed Ali on 13/03/2021.
//

import Foundation
import Combine

// MARK: - NewsUseCaseType
//
protocol NewsUseCaseType {
    func loadNews(page: Int, pageSize: Int) -> AnyPublisher<Result<[News], Error>, Never>
}

// MARK: - NewsUseCase
//
final class NewsUseCase: NewsUseCaseType {
    
    // MARK: - Properties
    //
    private let networkService: NetworkServiceType
    
    // MARK: - Init
    
    init(networkService: NetworkService = NetworkService() ) {
        self.networkService = networkService
    }
    
    func loadNews(page: Int, pageSize: Int) -> AnyPublisher<Result<[News], Error>, Never> {
        return networkService
            .load(Resource<NewsModel>.news(currentPage: page, pageSize: pageSize))
            .map({ (result: Result<NewsModel, NetworkError>) -> Result<[News], Error>  in
                switch result {
                case .success(let news): return
                    .success(news.articles ?? [])
                case .failure(let error):
                    return .failure(error)
                }
            })
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}
