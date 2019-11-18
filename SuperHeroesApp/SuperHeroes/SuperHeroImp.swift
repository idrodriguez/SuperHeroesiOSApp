//
//  SuperHeroImp.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class SuperHeroImp: SuperHero {
    var name: String
    
    init(){
        name = ""
    }
    
    func getName() -> String{
        return self.name
    }
}
