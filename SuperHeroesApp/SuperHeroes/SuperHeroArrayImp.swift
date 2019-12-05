//
//  SuperHeroArrayImp.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 05/12/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class SuperHeroArrayImp : SuperHeroArray{
    var repoSuperHero : Repository = RepositoryImpl()
    
    func getSuperHeroArray()->[SuperHero]{
        return repoSuperHero.getArrayListSuperHero()
    }
}
