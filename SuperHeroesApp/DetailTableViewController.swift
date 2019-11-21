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
        
        let data = getImageSuperHero(urlImage: (superHero?.photo)!)
        photoSuperHero.image = UIImage.init(data: data as Data)
        
        nameSuperHero.text = superHero?.name
        descriptionSuperHero.text = superHero?.description
    }
    
    //TODO: remove this
    func getImageSuperHero(urlImage: String) -> NSData {
        let url = NSURL(string: urlImage)! as URL
        let data = NSData.init(contentsOf: url)
        return data!
    }
}
