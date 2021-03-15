//
//  DraftFile.swift
//  NewsApp
//
//  Created by Ahmed Ali on 09/03/2021.
//

import Foundation

// swiftlint:disable all

//private let emojiList: [EmojiItem] = [
//    EmojiItem(
//        emoji: "👾",
//        name: "Alien Monster",
//        description: "A friendly-looking, tentacled space creature with two eyes."),
//    EmojiItem(
//        emoji: "🥑",
//        name: "Avocado",
//        description: "A pear-shaped avocado, sliced in half to show its yellow-green flesh and "
//            + "large brown pit."),
//    EmojiItem(
//        emoji: "🍟",
//        name: "French Fries",
//        description: "Thin-cut, golden-brown French fries, served in a red carton, as at "
//            + "McDonald’s."),
//    EmojiItem(
//        emoji: "🍕",
//        name: "Pizza",
//        description: "A slice of pepperoni pizza, topped with black olives on Google. WhatsApp "
//            + "adds green pepper, Samsung white onion."),
//    EmojiItem(
//        emoji: "🧩",
//        name: "Puzzle Piece",
//        description: "Puzzle Piece was approved as part of Unicode 11.0 in 2018 under the name "
//            + "“Jigsaw Puzzle Piece” and added to Emoji 11.0 in 2018."),
//    EmojiItem(
//        emoji: "🚀",
//        name: "Rocket",
//        description: "A rocket being propelled into space."),
//    EmojiItem(
//        emoji: "🗽",
//        name: "Statue of Liberty",
//        description: "The Statue of Liberty, often used as a depiction of New York City."),
//    EmojiItem(
//        emoji: "🧸",
//        name: "Teddy Bear",
//        description: "A classic teddy bear, as snuggled by a child when going to sleep."),
//    EmojiItem(
//        emoji: "🦄",
//        name: "Unicorn",
//        description: "The face of a unicorn, a mythical creature in the form of a white horse with "
//            + "a single, long horn on its forehead."),
//    EmojiItem(
//        emoji: "👩🏽‍💻",
//        name: "Woman Technologist",
//        description: "A woman behind a computer screen, working in the field of technology."),
//    EmojiItem(
//        emoji: "🗺",
//        name: "World Map",
//        description: "A rectangular map of the world. Generally depicted as a paper map creased at "
//            + "its folds, Earth’s surface shown in green on blue ocean."),
//    EmojiItem(
//        emoji: "👾",
//        name: "Alien Monster",
//        description: "A friendly-looking, tentacled space creature with two eyes."),
//    EmojiItem(
//        emoji: "🥑",
//        name: "Avocado",
//        description: "A pear-shaped avocado, sliced in half to show its yellow-green flesh and "
//            + "large brown pit."),
//    EmojiItem(
//        emoji: "🍟",
//        name: "French Fries",
//        description: "Thin-cut, golden-brown French fries, served in a red carton, as at "
//            + "McDonald’s."),
//    EmojiItem(
//        emoji: "🍕",
//        name: "Pizza",
//        description: "A slice of pepperoni pizza, topped with black olives on Google. WhatsApp "
//            + "adds green pepper, Samsung white onion."),
//    EmojiItem(
//        emoji: "🧩",
//        name: "Puzzle Piece",
//        description: "Puzzle Piece was approved as part of Unicode 11.0 in 2018 under the name "
//            + "“Jigsaw Puzzle Piece” and added to Emoji 11.0 in 2018."),
//    EmojiItem(
//        emoji: "🚀",
//        name: "Rocket",
//        description: "A rocket being propelled into space."),
//    EmojiItem(
//        emoji: "🗽",
//        name: "Statue of Liberty",
//        description: "The Statue of Liberty, often used as a depiction of New York City."),
//    EmojiItem(
//        emoji: "🧸",
//        name: "Teddy Bear",
//        description: "A classic teddy bear, as snuggled by a child when going to sleep."),
//    EmojiItem(
//        emoji: "🦄",
//        name: "Unicorn",
//        description: "The face of a unicorn, a mythical creature in the form of a white horse with "
//            + "a single, long horn on its forehead."),
//    EmojiItem(
//        emoji: "👩🏽‍💻",
//        name: "Woman Technologist",
//        description: "A woman behind a computer screen, working in the field of technology."),
//    EmojiItem(
//        emoji: "🗺",
//        name: "World Map",
//        description: "A rectangular map of the world. Generally depicted as a paper map creased at "
//            + "its folds, Earth’s surface shown in green on blue ocean."),
//    EmojiItem(
//        emoji: "👾",
//        name: "Alien Monster",
//        description: "A friendly-looking, tentacled space creature with two eyes."),
//    EmojiItem(
//        emoji: "🥑",
//        name: "Avocado",
//        description: "A pear-shaped avocado, sliced in half to show its yellow-green flesh and "
//            + "large brown pit."),
//    EmojiItem(
//        emoji: "🍟",
//        name: "French Fries",
//        description: "Thin-cut, golden-brown French fries, served in a red carton, as at "
//            + "McDonald’s."),
//    EmojiItem(
//        emoji: "🍕",
//        name: "Pizza",
//        description: "A slice of pepperoni pizza, topped with black olives on Google. WhatsApp "
//            + "adds green pepper, Samsung white onion."),
//    EmojiItem(
//        emoji: "🧩",
//        name: "Puzzle Piece",
//        description: "Puzzle Piece was approved as part of Unicode 11.0 in 2018 under the name "
//            + "“Jigsaw Puzzle Piece” and added to Emoji 11.0 in 2018."),
//    EmojiItem(
//        emoji: "🚀",
//        name: "Rocket",
//        description: "A rocket being propelled into space."),
//    EmojiItem(
//        emoji: "🗽",
//        name: "Statue of Liberty",
//        description: "The Statue of Liberty, often used as a depiction of New York City."),
//    EmojiItem(
//        emoji: "🧸",
//        name: "Teddy Bear",
//        description: "A classic teddy bear, as snuggled by a child when going to sleep."),
//    EmojiItem(
//        emoji: "🦄",
//        name: "Unicorn",
//        description: "The face of a unicorn, a mythical creature in the form of a white horse with "
//            + "a single, long horn on its forehead."),
//    EmojiItem(
//        emoji: "👩🏽‍💻",
//        name: "Woman Technologist",
//        description: "A woman behind a computer screen, working in the field of technology."),
//    EmojiItem(
//        emoji: "🗺",
//        name: "World Map",
//        description: "A rectangular map of the world. Generally depicted as a paper map creased at "
//            + "its folds, Earth’s surface shown in green on blue ocean.")
//]
////        NavigationView {
////            ScrollView {
////                LazyVStack {
////                    ForEach(0...1000, id: \.self) { _ in
////                        CardView()
////                    }
////                }
////                .padding()
////            }
////            .navigationBarTitle("Testing", displayMode: .automatic)
////        }
//struct EmojiItem: Identifiable {
//    let id = UUID()
//    let emoji: String
//    let name: String
//    let description: String
//}
//
//struct EmojiCircleView: View {
//    let emojiItem: EmojiItem
//    
//    var body: some View {
//        ZStack {
//            Text(emojiItem.emoji)
//                .shadow(radius: 3)
//                .font(.largeTitle)
//                .frame(width: 65, height: 65)
//                .overlay(
//                    Circle().stroke(Color.purple, lineWidth: 3)
//                )
//        }
//    }
//}
//struct EmojiItem: Identifiable {
//    let id = UUID()
//    let emoji: String
//    let name: String
//    let description: String
//}
//
//struct EmojiCircleView: View {
//    let emojiItem: EmojiItem
//    
//    var body: some View {
//        ZStack {
//            Text(emojiItem.emoji)
//                .shadow(radius: 3)
//                .font(.largeTitle)
//                .frame(width: 65, height: 65)
//                .overlay(
//                    Circle().stroke(Color.purple, lineWidth: 3)
//                )
//        }
//    }
//}
//NavigationView {
//    
//    List(emojiList) { emojiItem in
////                HStack {
////                    EmojiCircleView(emojiItem: emojiItem)
////                    Text(emojiItem.name)
////                        .font(.headline)
////                }.padding(7)
//        CardView()
//
//    }
//}
//func load() {
    //
    //        state = .loading
    //
    //        let url = ApiConstants.baseUrl
    //
    //        URLSession.shared.dataTask(with: url) {(data, response, error) in
    //            do {
    //                if let  error = error {
    //                    DispatchQueue.main.async {
    //                        self.state = .failed(error)
    //                    }
    //                    return
    //                }
    //
    //                if let data = data {
    //                    let decodedLists = try JSONDecoder().decode(ArticleModel.self, from: data)
    //                    DispatchQueue.main.async {
    //                        self.articales = decodedLists.articles
    //                        self.state = .loaded
    //                    }
    //                } else {
    //                    print("No Data")
    //                }
    //
    //            } catch {
    //                DispatchQueue.main.async {
    //                    self.state = .failed(error)
    //                }
    //            }
    //
    //        }.resume()
//    state = .loading
//    
//    networkService.load(Resource<NewsModel>.news(currentPage: 1))
//        .map({ (result: Result<NewsModel, NetworkError>) -> Result<[News], Error> in
//            switch result {
//            case .success(let articles):
//                return .success(articles.news)
//            case .failure(let error):
//                return .failure(error)
//            }
//        })
//        .sink(receiveCompletion: { (completion) in
//            switch completion {
//            case let .failure(error):
//                print("Couldn't get users: \(error)")
//                self.state = .failed(error)
//                
//            case .finished: break
//            }
//        }) { result in
//            
//            switch result {
//            
//            case .success(let articles):
//                self.news = articles
//                self.state = .loaded
//            case .failure(let error):
//                print("Couldn't get articles: \(error)")
//                self.state = .failed(error)
//            }
//        }
//        .store(in: &subscriptions)
//}
//
//    func searchArticales() -> AnyPublisher<Result<[Article], Error>, Never> {
//        return networkService
//            .load(Resource<ArticleModel>.articales())
//            .map({ (result: Result<ArticleModel, NetworkError>) -> Result<[Article], Error> in
//                switch result {
//                case .success(let articles):
//                    return .success(articles.articles)
//                case .failure(let error):
//                    return .failure(error)
//                }
//            })
//            .subscribe(on: DispatchQueue.global(qos: .background))
//            .receive(on: DispatchQueue.main)
//            .eraseToAnyPublisher()
//    }
//}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(viewModel: NewsViewModel())
//    }
//}
//
//struct RepositoriesListContainer: View {
//    @ObservedObject var viewModel: NewsViewModel
//
//    var body: some View {
//        RepositoriesList(
//            news: viewModel.news,
//            isLoading: viewModel.state == .loading,
//            onScrolledAtBottom: viewModel.loadMoreContentIfNeeded(currentItem:)
//        )
////        .onAppear(perform: viewModel.fetchNextPageIfPossible)
//    }
//}
//
//                KFImage(URL(string: news.urlToImage ?? "" ))
//                    .placeholder {
//                        Image(Asset.placeholder.name)
//                            .resizable()
//                            .frame(height: 350)
//                            .aspectRatio(contentMode: .fit)
//                            .cornerRadius(20, corners: [.topLeft, .topRight])
//                    }
//                    .resizable()
//                    .frame(height: 350)
//                    .aspectRatio(contentMode: .fit)
//                    .cornerRadius(20, corners: [.topLeft, .topRight])
