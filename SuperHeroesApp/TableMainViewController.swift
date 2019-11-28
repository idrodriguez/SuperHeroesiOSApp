//
//  ViewController.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    var superHeroArray : [SuperHero] = []
    var superHeroFactory : SuperHeroFactoryImpl = SuperHeroFactoryImpl.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        superHeroArray = superHeroFactory.make()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "SuperHeroCell", for: indexPath) as! CustomCell
        let superHero = superHeroArray[indexPath.row]
        customCell.superHeroNameLabel.text = superHero.name
        customCell.superHeroPhoto.image = superHero.getImageSuperHero()
        return customCell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailTableViewController = segue.destination as? DetailTableViewController {
            if let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell){
                let superHero = superHeroArray[indexPath.row]
                detailTableViewController.superHero = superHero
            }
        }
    }
}

