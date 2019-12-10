//
//  FactorySuperHeroImpl.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class MapperSuperHeroImpl : MapperSuperHero {
   
    func transform(_ data: [Dictionary<String, AnyObject>]?) -> [SuperHero] {
        var superHeroArray : [SuperHero] = []
        
        if let arrayDict = data as? [Dictionary<String, AnyObject>] {
            for dict in arrayDict as [Dictionary<String, AnyObject>] {
                let name = dict["name"] as! String
                let photo = dict["photo"] as! String
                let description = dict["description"] as! String
                let moreinfolink = dict["moreinfolink"] as! String
                let powers = dict["powers"] as! Array<String>
                
                let superHero = SuperHero(name: name, photo: photo, description: description, moreInfo: moreinfolink, powers: powers)
                superHeroArray.append(superHero)
            }
        }
        return superHeroArray
    }
}
