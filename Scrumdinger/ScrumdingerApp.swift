//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Elibo on 6/9/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
