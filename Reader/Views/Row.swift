//
//  Row.swift
//  Reader
//
//  Created by siilyaboy on 2023/4/21.
//

import SwiftUI

struct Row: View {
    var article: Article
    @EnvironmentObject var motion: MotionManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(article.title)
                .font(.title3)
                .bold()
                .padding(.bottom, 3)
                .scaleEffect(max(1, (0.7 + -motion.y * 0.45)))
            Text(article.body)
                .lineLimit(3)
                .scaleEffect(max(1, (0.7 + -motion.y * 0.37)))
        }
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(article: Article(id: 1, title: "标题", body: "正文"))
    }
}
