//  Copyright © 2021 Poikile Solutions. All rights reserved.

import SwiftUI

@main
struct Fasti2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
