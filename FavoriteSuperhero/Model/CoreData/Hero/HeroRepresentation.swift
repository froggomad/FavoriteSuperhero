//
//  HeroRepresentation.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 1/30/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import Foundation

struct HeroResults: Codable {
    let results: [HeroRepresentation]
}

struct HeroRepresentation: Codable {
    let id: String
    let name: String
    let powerstats: PowerstatsRepresentation
    let biography: BiographyRepresentation
    let image: ImageRepresentation
}
