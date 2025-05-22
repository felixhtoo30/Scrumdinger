//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Felix Htoo on 18/05/2025.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        
        List(scrums, id: \.title) {scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}


