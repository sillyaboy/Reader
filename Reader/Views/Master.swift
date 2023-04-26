//
//  ContentView.swift
//  Reader
//
//  Created by siilyaboy on 2023/4/21.
//

import SwiftUI

//MARK:  - View
struct Master: View {
    @StateObject var data = TabReadingData()
    @AppStorage("darkMode") var darkMode = false
    
    var body: some View {
        NavigationView {
            List(data.articles) { item in
                NavigationLink(destination:
                    Detail(article: item)){
                    Row(article: item)
                }
            }
            .navigationTitle("编辑推荐")
            .toolbar{
                Setting(darkMode: $darkMode)
            }
        }
        .preferredColorScheme(darkMode ? .dark : .light)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Master()
    }
}


