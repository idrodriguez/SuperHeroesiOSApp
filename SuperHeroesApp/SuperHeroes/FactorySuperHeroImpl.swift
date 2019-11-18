//
//  FactorySuperHeroImpl.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class FactorySuperHeroImpl : FactorySuperHero {

    init() {
        
    }

    func getSuperHeroes() -> [SuperHero] {
        
        var superHeroArray : [SuperHero] = []
        
        superHeroArray.append(SuperHeroImp(name: "Scarlet Witch"))
        superHeroArray.append(SuperHeroImp(name: "Iron Man"))
        superHeroArray.append(SuperHeroImp(name: "Wolverine"))
        superHeroArray.append(SuperHeroImp(name: "Hulk"))
        superHeroArray.append(SuperHeroImp(name: "Ultron"))
        superHeroArray.append(SuperHeroImp(name: "Black Panter"))
        superHeroArray.append(SuperHeroImp(name: "Captain America"))
        superHeroArray.append(SuperHeroImp(name: "Captain Marvel"))

        return superHeroArray
    }
    
    
}
