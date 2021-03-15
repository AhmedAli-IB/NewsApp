//
//  NetworkService.swift
//  NewsApp
//
//  Created by Ahmed Ali on 08/03/2021.
//

import Foundation
import Combine

// MARK: - NetworkService
/// Responsible  for handling of all network requets
///
final class NetworkService: NetworkServiceType {
    
    // MARK: - Properties
    //
    private let session: URLSession

    // MARK: - Init
    //
    init(session: URLSession = URLSession(configuration: URLSessionConfiguration.default)) {
        self.session = session
    }

    // MARK: - Handler
    //
    @discardableResult
    func load<T>(_ resource: Resource<T>) -> AnyPublisher<Result<T, NetworkError>, Never> {
        guard let request = resource.request else {
            return .just(.failure(NetworkError.invalidRequest))
        }
        return session.dataTaskPublisher(for: request)
            .mapError { _ in NetworkError.invalidRequest }
            .print()
            .flatMap { data, response -> AnyPublisher<Data, Error> in
                guard let response = response as? HTTPURLResponse else {
                    return .fail(NetworkError.invalidResponse)
                }

                guard 200..<300 ~= response.statusCode else {
                    return .fail(NetworkError.dataLoadingError(statusCode: response.statusCode, data: data))
                }
                return .just(data)
            }
            .decode(type: T.self, decoder: JSONDecoder())
        .map { .success($0) }
        .catch ({ error -> AnyPublisher<Result<T, NetworkError>, Never> in
            return .just(.failure(NetworkError.jsonDecodingError(error: error)))
        })
        .eraseToAnyPublisher()
        
    }

}
