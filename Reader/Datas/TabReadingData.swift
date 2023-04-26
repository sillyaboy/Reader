//
//  Data.swift
//  Reader
//
//  Created by siilyaboy on 2023/4/21.
//

import Swift
import Combine
import Foundation

//MARK:  - Model
struct Article: Codable, Identifiable {
    var id: Int
    var title: String
    var body: String
    
}


//MARK:  - ViewModel
class TabReadingData: ObservableObject {
    @Published var articles = [Article]()
    
    init(){
        let url = URL(string: "https://www.legolas.me/s/articles.json")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            DispatchQueue.main.async {
                self.articles = try! JSONDecoder().decode([Article].self, from: data!)
            }
        }.resume()
    }
}
