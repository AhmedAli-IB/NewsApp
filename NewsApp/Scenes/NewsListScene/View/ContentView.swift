//
//  ContentView.swift
//  NewsApp
//
//  Created by Ahmed Ali on 08/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: NewsViewModel = NewsViewModel()
    
    var body: some View {
        
        NewsListView(
            viewModel: viewModel,
            isLoading: viewModel.state == .loading,
            onScrolledAtBottom: viewModel.loadMoreContentIfNeeded(currentItem:)
        )
        .onAppear(perform: viewModel.viewDidLoad)
    }
}

// MARK: - NewsListView
//
struct NewsListView: View {
    
    let viewModel: NewsViewModel
    let isLoading: Bool
    let onScrolledAtBottom: (_ article: News) -> Void
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                PullToRefresh(coordinateSpaceName: "pullToRefresh") {
                    // do your stuff when pulled
                    viewModel.pullToRefresh()
                }

                LazyVStack {
                    ForEach(viewModel.news) { article in
                        NavigationLink(destination: NewsDetails(viewModel: NewsDetailsViewModel(news: article))) {

                        CardView(news: article)
                            .onAppear {
                                self.onScrolledAtBottom(article)
                            }
                        }
                    }
                    
                    if isLoading {
                        loadingIndicator
                    }
                }
            }.navigationBarTitle("What's New 🤍")
            .coordinateSpace(name: "pullToRefresh")
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    // handle loading view
    private var loadingIndicator: some View {
        Spinner(style: .medium)
            .frame(idealWidth: .infinity, maxWidth: .infinity, alignment: .center)
    }
}
