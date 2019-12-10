//
//  FactorySuperHero.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

protocol MapperSuperHero {
    func transform(_ data: [Dictionary<String, AnyObject>]?) -> [SuperHero]
}
