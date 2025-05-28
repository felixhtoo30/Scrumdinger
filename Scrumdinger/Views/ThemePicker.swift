//
//  SwiftUIView.swift
//  Scrumdinger
//
//  Created by Felix Htoo on 27/05/2025.
//

import SwiftUI
import ThemeKit

struct ThemePicker: View {
    @Binding var selection: Theme
    var body: some View {
        Picker("Theme", selection: $selection) {
            
            /** "Theme.allCases" can be used because Theme enum conforms to CaseIterable protocol in Theme.swift */
            ForEach (Theme.allCases) {theme in
                
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    @Previewable @State var theme = Theme.periwinkle
    ThemePicker(selection: $theme)
}
