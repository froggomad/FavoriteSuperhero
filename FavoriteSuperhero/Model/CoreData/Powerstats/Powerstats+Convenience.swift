//
//  Powerstats+Convenience.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 2/2/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//
import Foundation
import CoreData


extension Powerstats {
    convenience init?(intelligence: String, strength: String, speed: String, durability: String, power: String, combat: String, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.intelligence = intelligence
        self.strength = strength
        self.speed = speed
        self.durability = durability
        self.power = power
        self.combat = combat
    }

    convenience init?(representation: PowerstatsRepresentation, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(intelligence: representation.intelligence, strength: representation.strength, speed: representation.speed, durability: representation.durability, power: representation.power, combat: representation.combat, context: context)
    }

}
