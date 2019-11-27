//
//  FactorySuperHeroImpl.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class SuperHeroFactoryImpl : SuperHeroFactory {
    let connection = ConnectionApiRest()
    
    init(){}

    func make() -> [SuperHero] {
        var superHeroArray : [SuperHero] = []
        
        let dictionary = connection.getListSuperHeroFromAPI()
        for item in dictionary as! [Dictionary<String, AnyObject>] {
            let name = item["name"] as! String
            let photo = item["photo"] as! String
            let description = item["description"] as! String
            let moreinfolink = item["moreinfolink"] as! String
            let powers = item["powers"] as! Array<String>
            
            let superHero = SuperHero(name: name, photo: photo, description: description, moreInfo: moreinfolink, powers: powers)
            superHeroArray.append(superHero)
        }

        return superHeroArray
    }
}
