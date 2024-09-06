//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Elibo on 6/9/24.
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
