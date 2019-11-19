//
//  FactorySuperHeroImpl.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class SuperHeroFactoryImpl : SuperHeroFactory {

    init(){}

    func make() -> [SuperHero] {
        var superHeroArray : [SuperHero] = []
        
        superHeroArray.append(SuperHero(name: "Scarlet Witch", photo: "https://i.annihil.us/u/prod/marvel/i/mg/9/b0/537bc2375dfb9.jpg"))
        superHeroArray.append(SuperHero(name: "Iron Man", photo: "https://i.annihil.us/u/prod/marvel/i/mg/c/60/55b6a28ef24fa.jpg"))
        superHeroArray.append(SuperHero(name: "Wolverine", photo: "https://i.annihil.us/u/prod/marvel/i/mg/9/00/537bcb1133fd7.jpg"))
        superHeroArray.append(SuperHero(name: "Hulk", photo: "https://x.annihil.us/u/prod/marvel/i/mg/e/e0/537bafa34baa9.jpg"))
        superHeroArray.append(SuperHero(name: "Ultron", photo: "https://i.annihil.us/u/prod/marvel/i/mg/9/a0/537bc7f6d5d23.jpg"))
        superHeroArray.append(SuperHero(name: "Black Panter", photo: "https://i.annihil.us/u/prod/marvel/i/mg/9/03/537ba26276348.jpg"))
        superHeroArray.append(SuperHero(name: "Captain America", photo: "https://x.annihil.us/u/prod/marvel/i/mg/9/80/537ba5b368b7d.jpg"))
        superHeroArray.append(SuperHero(name: "Captain Marvel", photo: "https://x.annihil.us/u/prod/marvel/i/mg/6/30/537ba61b764b4.jpg"))

        return superHeroArray
    }
}
