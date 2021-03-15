//
//  NetworkServiceType.swift
//  NewsApp
//
//  Created by Ahmed Ali on 08/03/2021.
//

import Foundation
import Combine

// MARK: - NetworkServiceType
//
protocol NetworkServiceType: AnyObject {

    @discardableResult
    func load<T: Decodable>(_ resource: Resource<T>) -> AnyPublisher<Result<T, NetworkError>, Never>
}

// MARK: - NetworkError
/// Defines the Network service errors.
///
enum NetworkError: Error {
    case invalidRequest
    case invalidResponse
    case dataLoadingError(statusCode: Int, data: Data)
    case jsonDecodingError(error: Error)
}
