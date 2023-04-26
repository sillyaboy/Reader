//
//  ReadingNote.swift
//  Reader
//
//  Created by siilyaboy on 2023/4/22.
//

import SwiftUI
import BetterSafariView

struct ReadingNote: View {
    @State private var presentingSafariView = false
    
    var body: some View {
        NavigationView {
            ScrollView{
                HStack{
                    Link(destination: URL(string: "https://www.machub.cn")!) {
                        RoundButton(text: "在 Safari 打开", image: "safari")
                    }
                    
                    Button(action: {
                        self.presentingSafariView = true
                    }) {
                        RoundButton(text: "应用内打开", image: "arrow.up.forward.app")
                    }
                    .safariView(isPresented: $presentingSafariView) {
                        SafariView(
                            url: URL(string: "https://www.machub.cn")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: true,
                                barCollapsingEnabled: true
                            )
                        )
                        .preferredBarAccentColor(.clear)
                        .preferredControlAccentColor(.orange)
                        .dismissButtonStyle(.close)
                    }
                }
                NoteEntryAndList()
                Spacer()
            }
            .navigationTitle("笔记")
            
        }
        
        
    }
}

struct ReadingNote_Previews: PreviewProvider {
    static var previews: some View {
        ReadingNote()
    }
}
