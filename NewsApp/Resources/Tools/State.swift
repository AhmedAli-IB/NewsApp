//
//  State.swift
//  NewsApp
//
//  Created by Ahmed Ali on 14/03/2021.
//

import Foundation

// MARK: - State
/// Responsible  for handle view state
///
enum ViewState {
    case loading
    case failed(Error)
    case loaded
}

extension ViewState: Equatable {
    static func == (lhs: ViewState, rhs: ViewState) -> Bool {
        switch (lhs, rhs) {
        case (.loading, .loading):
            return true
        case (.failed, .failed):
            return true
        case (.loaded, .loaded):
            return true
        default:
            return false
        }
    }
}
