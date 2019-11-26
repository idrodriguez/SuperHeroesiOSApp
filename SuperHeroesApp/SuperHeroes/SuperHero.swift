//
//  SuperHeroImp.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import UIKit

struct SuperHero {
    let name: String
    var photo: String
    let description: String
    let moreInfo: String=""
    let powers: String=""
    
    init(name: String, photo: String, description: String){
        self.name = name
        self.description = description
        self.photo = photo
        
    }
    
    func getImageSuperHero() -> UIImage {
        let url = NSURL(string: self.photo)! as URL
        let data = NSData.init(contentsOf: url)
        let image = UIImage.init(data: data! as Data)
        return image!
    }
}
