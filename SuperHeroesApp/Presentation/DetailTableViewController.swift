//
//  DetailTableViewController.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 21/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import UIKit

class DetailTableViewController :UITableViewController {
    @IBOutlet weak var photoSuperHero: UIImageView!
    @IBOutlet weak var nameSuperHero: UILabel!
    @IBOutlet weak var descriptionSuperHero: UITextView!
    
    var superHero : SuperHero?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoSuperHero.image = superHero?.getImageSuperHero()
        nameSuperHero.text = superHero?.name
        descriptionSuperHero.text = superHero?.description
    }
}
