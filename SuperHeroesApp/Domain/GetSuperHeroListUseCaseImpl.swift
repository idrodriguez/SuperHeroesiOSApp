//
//  SuperHeroArrayImp.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 05/12/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation


class GetSuperHeroListUseCaseImpl: GetSuperHeroListUseCase {
    
    private let repoSuperHero: Repository
    
    init(repo: Repository = RepositoryImpl()) {
        self.repoSuperHero = repo
    }
    
    func execute() -> [SuperHero] {
        return repoSuperHero.getArrayListSuperHero()
    }
}


//class SuperHeroArrayImp : SuperHeroArray{
//    var repoSuperHero : Repository = RepositoryImpl()
//    
//    func getSuperHeroArray()->[SuperHero]{
//        return repoSuperHero.getArrayListSuperHero()
//    }
//}
