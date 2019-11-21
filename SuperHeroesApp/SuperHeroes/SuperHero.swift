//
//  SuperHeroImp.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

struct SuperHero {
    let name: String
    let photo : String
    let description: String
    let moreInfo: String=""
    let powers: String=""
    
    init(name: String, photo: String, description: String){
        self.name = name
        self.photo = photo
        self.description = description
    }    
}
