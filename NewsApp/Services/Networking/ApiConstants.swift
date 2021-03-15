//
//  ApiConstants.swift
//  NewsApp
//
//  Created by Ahmed Ali on 14/03/2021.
//

import Foundation

// MARK: - ApiConstants
//
struct ApiConstants {
    
    static let baseUrl: URL = {
        guard let rootURL = URL(string: "http://newsapi.org/v2/everything") else {
            fatalError("Root URL not set in plist for this environment \(#function)")
        }
        return rootURL
    }()
}
