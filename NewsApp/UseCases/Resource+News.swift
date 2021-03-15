//
//  Resource+News.swift
//  NewsApp
//
//  Created by Ahmed Ali on 14/03/2021.
//

import Foundation

/// Add news api
///
extension Resource {
    
    static func news(currentPage: Int, pageSize: Int) -> Resource<NewsModel> {
        let url = ApiConstants.baseUrl
        let parameters: [String: CustomStringConvertible] = [
            "q": "egypt",
            "from": "2021-02-20",
            "apiKey": "e991749d19b64815a80e53b694a3df89",
            "pageSize": pageSize,
            "page": currentPage
        ]
        return Resource<NewsModel>(url: url, parameters: parameters)
    }
}
