//
//  NewsDetails.swift
//  NewsApp
//
//  Created by Ahmed Ali on 14/03/2021.
//

import SwiftUI

struct NewsDetails: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var viewModel: NewsDetailsViewModel

    var body: some View {
        ScrollView {
            VStack {
                // Zstack contain image and close button
                ZStack(alignment: .top) {

                    ImageContentView(imageUrl: viewModel.news.urlToImage ?? "",
                                     width: UIScreen.main.bounds.width,
                                     height: UIScreen.main.bounds.height * 0.5)
                    // close button
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        HStack {
                            Spacer()
                            Image(Asset.icons8Close.name)
                                .resizable()
                                .frame(width: 40, height: 40)

                                .shadow(radius: 10)
                        }.padding(.top, 44)
                        .padding(.trailing, 10)
                        
                    })
                    
                }
                // discription view
                DiscriptionContentView(news: viewModel.news)
                .padding(.all, 20)
                Spacer()
            }
        }.ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#if DEBUG
struct NewsDetails_Previews: PreviewProvider {
    static var previews: some View {
        let src =  Source(id: "", name: "source")
        let desc = "articleDescription articleDescription articleDescription📄"
        let id = UUID()
        let news = News(id: id,
                        source: src,
                        author: "author",
                        title: "title",
                        articleDescription: desc,
                        url: "",
                        urlToImage: "",
                        content: "content")
        
        NewsDetails( viewModel: NewsDetailsViewModel(news: news))
    }
}
#endif
