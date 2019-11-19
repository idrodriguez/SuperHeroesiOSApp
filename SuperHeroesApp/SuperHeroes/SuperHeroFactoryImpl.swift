//
//  FactorySuperHeroImpl.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class SuperHeroFactoryImpl : SuperHeroFactory {

    init() {
        
    }

    func make() -> [SuperHero] {
        
        var superHeroArray : [SuperHero] = []
        
        superHeroArray.append(SuperHero(name: "Scarlet Witch"))
        superHeroArray.append(SuperHero(name: "Iron Man"))
        superHeroArray.append(SuperHero(name: "Wolverine"))
        superHeroArray.append(SuperHero(name: "Hulk"))
        superHeroArray.append(SuperHero(name: "Ultron"))
        superHeroArray.append(SuperHero(name: "Black Panter"))
        superHeroArray.append(SuperHero(name: "Captain America"))
        superHeroArray.append(SuperHero(name: "Captain Marvel"))

        return superHeroArray
    }
    
    
}
