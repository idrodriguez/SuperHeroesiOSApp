//
//  Repository.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 05/12/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class RepositoryImpl : Repository {
    let connection = ConnectionApiRest()
    let mapper = MapperSuperHeroImpl()
    let superHeroArray: [SuperHero]
    
    init(){
        let dictionary = connection.getListSuperHeroFromAPI()
        superHeroArray = mapper.transform(dictionary)
    }
    
    func getArrayListSuperHero()->[SuperHero]{
        return superHeroArray
    }
}
