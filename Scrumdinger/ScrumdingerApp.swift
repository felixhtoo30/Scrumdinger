//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Felix Htoo on 17/05/2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
