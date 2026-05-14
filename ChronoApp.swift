//
//  ChronoApp.swift
//  Chrono
//
//  Created by Dana on 26/11/1447 AH.
//

import SwiftUI
import CoreData

@main
struct ChronoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
