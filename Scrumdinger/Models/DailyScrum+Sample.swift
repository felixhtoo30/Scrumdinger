//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Felix Htoo on 18/05/2025.
//

import Foundation
import ThemeKit

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "Development",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 8,
                   theme: .oxblood)
    ]
}
