//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Felix Htoo on 24/05/2025.
//

import SwiftUI

struct DetailEditView: View {
    
//    @State private var scrum = DailyScrum.emptyScrum
    @Binding var scrum: DailyScrum
    
    @State private var attendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Header Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
                
                ThemePicker(selection: $scrum.theme)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    // Remove attendee row
                    print("Delete attendee at index: \(indices)")
                    scrum.attendees.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $attendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: attendeeName)
                            // Add attendee row
                            scrum.attendees.append(attendee)
                            attendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .accessibilityLabel("Add attendee")
                    .disabled(attendeeName.isEmpty)
                }
                
            }
        }
    }
}

#Preview {
    @Previewable @State var scrum = DailyScrum.sampleData[0]
    DetailEditView(scrum: $scrum)
}
