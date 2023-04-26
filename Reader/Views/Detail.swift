//
//  Detail.swift
//  Reader
//
//  Created by siilyaboy on 2023/4/21.
//

import SwiftUI

struct Detail: View {
    var article: Article
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(article.body)
            }
            .padding()
        }
        .navigationTitle(article.title)
        
        }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(article: Article(id: 1, title: "标题", body: "正文"))
    }
}
