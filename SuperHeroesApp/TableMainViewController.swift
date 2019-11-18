//
//  ViewController.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import UIKit

class TableMainViewController: UITableViewController {
    var superHeroArray : [SuperHero] = []
    var factorySuperHero : FactorySuperHeroImpl = FactorySuperHeroImpl.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        superHeroArray = factorySuperHero.getSuperHeroes()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SuperHeroCell", for: indexPath)
        let superHero = superHeroArray[indexPath.row]
        cell.textLabel?.text = superHero.getName()
        
        return cell
    }


}

