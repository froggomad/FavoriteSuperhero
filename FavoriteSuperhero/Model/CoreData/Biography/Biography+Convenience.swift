//
//  Biography+Convenience.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 2/2/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import Foundation
import CoreData


extension Biography {
    convenience init?(fullName: String, firstAppearance: String, aliases: NSSet = [], placeOfBirth: String, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.fullName = fullName
        self.firstAppearance = firstAppearance
        self.aliases = aliases
    }

    convenience init?(representation: BiographyRepresentation, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(fullName: representation.fullName, firstAppearance: representation.firstAppearance, placeOfBirth: representation.placeOfBirth, context: context)
    }

}
