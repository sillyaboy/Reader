//
//  Locked.swift
//  Reader
//
//  Created by siilyaboy on 2023/4/22.
//

import SwiftUI

struct Locked: View {
    let authorize: () -> ()
    
    var body: some View {
        Image(systemName: "lock.shield")
            .font(.system(.largeTitle, design: .rounded))
            .padding(.bottom, 50)
        Button(action: {
            authorize()
            Vibration.light.vibrate()
        }) {
            Text("轻点再次尝试解锁")
                .bold()
        }
    }
}

