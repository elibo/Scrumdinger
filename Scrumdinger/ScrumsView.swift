//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Elibo on 6/9/24.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums:[DailyScrum]
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
               
            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action:{}){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
           
        }
    }
}

#Preview {
    ScrumsView(scrums: .constant(DailyScrum.sampleData))
}
