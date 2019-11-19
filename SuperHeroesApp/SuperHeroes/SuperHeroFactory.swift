//
//  FactorySuperHero.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

protocol SuperHeroFactory {
        func make() -> [SuperHero]
}
