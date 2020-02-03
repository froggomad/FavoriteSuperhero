//
//  Hero+Convenience.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 2/2/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import Foundation
import CoreData

extension Hero {
//    var heroRepresentation: HeroRepresentation? {
//        guard let id = id,
//            let name = name else {return nil}
//    }
    
    convenience init?(id: String, name: String, powerstats: Powerstats, biography: Biography, image: Image, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.id = id
        self.name = name
        self.powerstats = powerstats
        self.biography = biography
        self.image = image
    }
    
    convenience init?(representation: HeroRepresentation, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(id: representation.id, name: representation.name, powerstats: representation.powerstats, biography: Biography(representation: representation.biography), image: representation.image, context: context)
    }
}
