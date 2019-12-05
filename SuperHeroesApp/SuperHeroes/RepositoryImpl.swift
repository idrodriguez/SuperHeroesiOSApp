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
    let mapper : MapperSuperHero
    
    init(){
        let dictionary = connection.getListSuperHeroFromAPI()
        mapper = MapperSuperHeroImpl(array: dictionary ?? [])
    }
    
    func getArrayListSuperHero()->[SuperHero]{
        return mapper.mapSuperHeroes()
    }
}
