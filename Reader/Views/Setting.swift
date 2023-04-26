//
//  Setting.swift
//  Reader
//
//  Created by siilyaboy on 2023/4/21.
//

import SwiftUI

struct Setting: View {
    @Binding var darkMode: Bool
    
    var body: some View {
        Button(action: {
            Vibration.selection.vibrate()
            darkMode.toggle()
        }) {
            Image(systemName: darkMode ? "sun.max.fill" : "moon.fill")
                .font(.system(.headline, design: .rounded))
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting(darkMode: .constant(false))
    }
}
