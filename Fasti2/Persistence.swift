//  Copyright © 2021 Poikile Solutions. All rights reserved.

import CoreData

struct PersistenceController {

    static func initializeContext(_ context: NSManagedObjectContext) {
        ["Ianuarius", "Februarius", "Mars", "Aprilis", "Maius", "Sextilis", "Septilis", "October", "November", "December"].enumerated().forEach { (index, nomenMensis) in
            let mensis = Mensis(context: context)
            mensis.nomen = nomenMensis
            mensis.numerus = Int16(index + 1)
        }

        do {
            try context.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }

    static var shared: PersistenceController = {
        var persistenceController = PersistenceController()
        let viewContext = persistenceController.container.viewContext
        initializeContext(viewContext)

        return persistenceController
    }()

    static var preview: PersistenceController = {
        let persistenceController = PersistenceController(inMemory: true)
        let viewContext = persistenceController.container.viewContext
        initializeContext(viewContext)

        return persistenceController
    }()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Fasti2")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                Typical reasons for an error here include:
                * The parent directory does not exist, cannot be created, or disallows writing.
                * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                * The device is out of space.
                * The store could not be migrated to the current model version.
                Check the error message to determine what the actual problem was.
                */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}
