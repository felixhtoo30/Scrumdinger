//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Felix Htoo on 10/06/2025.
//

import SwiftUI
import TimerKit

struct MeetingFooterView: View {
    let speakers: [ScrumTimer.Speaker]
    
    // TODO Here: Section 6 -> Step 3
    
    var body: some View {
        HStack {
            Text("Speaker 1 of 3")
            Spacer()
            Button(action: {}) {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next speaker")
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    @Previewable var speakers = DailyScrum.sampleData[0].attendees
        .map { $0.name }
        .map {
            ScrumTimer.Speaker(name: $0, isCompleted: false)
        }
    MeetingFooterView(speakers: speakers)
}
