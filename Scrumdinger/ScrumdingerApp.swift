//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Felix Htoo on 17/05/2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
            
            // Latest: all State and @Binding prepared. Just need to test with emulator ..
        }
    }
}
