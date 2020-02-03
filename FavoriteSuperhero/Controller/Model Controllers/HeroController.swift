//
//  HeroController.swift
//  FavoriteSuperhero
//
//  Created by Kenny on 1/30/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import Foundation
import CoreData

class HeroController {
    private let superHeroAPIURL = URL(string:"https://superheroapi.com/api/10221569289250140")
    private let firebaseURL = URL(string:"https://superhero-b9019.firebaseio.com/")
    
    static let shared = HeroController()
    typealias completionWithError = (Error?) -> ()
    let context = CoreDataStack.shared.mainContext
    var heroReps: [HeroRepresentation] = []
    
    func getHero(name: String, complete: @escaping completionWithError) {
        let searchURL = superHeroAPIURL?.appendingPathComponent("search").appendingPathComponent(name)
        guard let request = NetworkService.createRequest(url: searchURL, method: .get) else {
            let error = NSError(domain: "HeroController.getHeroes.request", code: 400, userInfo: nil)
            complete(error)
            return
        }
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                complete(error)
                return
            }
            guard let data = data else {
                let error = NSError(domain: "HeroController.getHeroes.dataTask.data", code: 0, userInfo: nil)
                complete(error)
                return
            }
            print("JSON String: \(String(data: data, encoding: .utf8))")
            
            guard let optionalHeroReps = NetworkService.decode(to: HeroResults.self, data: data) else {
                let error = NSError(domain: "HeroController.getHeroes.dataTask.decode", code: 0, userInfo: nil)
                complete(error)
                return
            }
            
            for (rep) in optionalHeroReps.results {
                self.heroReps.append(rep)
            }
            complete(nil)
        }.resume()
    }
    
    func makeHeroes() {
        for hero in heroReps {
            let hero = Hero(representation: hero)
        }
    }
    
    func saveHero() {
        
    }
    
    func updateHero() {
        
    }
    
    func updateHeroes(with: [HeroRepresentation]) {
        
    }
    
    func deleteHero() {
        
    }
    
}


