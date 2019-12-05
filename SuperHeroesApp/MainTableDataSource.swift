//
//  DataSourceMainTable.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 03/12/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import UIKit

class MainTableDataSource : NSObject, UITableViewDataSource  {
    var superHeroArray : [SuperHero] = []
    var superHeroData : SuperHeroArray = SuperHeroArrayImp()

    override init(){
        self.superHeroArray = superHeroData.getSuperHeroArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "SuperHeroCell", for: indexPath) as! CustomCell
        let superHero = superHeroArray[indexPath.row]
        customCell.superHeroNameLabel.text = superHero.name
        customCell.superHeroPhoto.image = superHero.getImageSuperHero()
        return customCell
    }
    
    //
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
  
    }

}

