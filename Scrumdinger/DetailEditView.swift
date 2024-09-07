//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Elibo on 6/9/24.
//

import SwiftUI

struct DetailEditView: View {
    @Binding var scrum: DailyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form{
            Section(header:Text("Meeting Info")){
                TextField("Title",text:$scrum.title)
                HStack{
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes ")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                    .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
                ThemePicker(selection: $scrum.theme)
            }
            Section(header:Text("Attendees")){
                ForEach(scrum.attendees){ attendee in
                    Text(attendee.name)
                }
                .onDelete { index in
                    scrum.attendees.remove(atOffsets: index)
                }
                HStack{
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action:{
                        withAnimation{
                            let attendee = DailyScrum.Attendee(name:newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

#Preview {
    DetailEditView(scrum: .constant(DailyScrum.sampleData[0]))
}
