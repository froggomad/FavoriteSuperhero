//
//  Alias+Convenience.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 2/3/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//
import Foundation
import CoreData


extension Aliases {
    convenience init?(aliases: NSSet, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.aliases = aliases
    }

}
