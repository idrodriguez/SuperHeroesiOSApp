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
        tableView.rowHeight = 150
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "SuperHeroCell", for: indexPath) as! CustomCell
        let superHero = superHeroArray[indexPath.row]
        customCell.superHeroNameLabel.text = superHero.name
        
        let data = getImageSuperHero(urlImage: superHero.photo)
        customCell.superHeroPhoto.image = UIImage.init(data: data as Data)
        
        return customCell
    }
    
    func getImageSuperHero(urlImage: String) -> NSData {
        let url = NSURL(string: urlImage)! as URL
        let data = NSData.init(contentsOf: url)
        return data!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let itemDetailViewController = segue.destination as? ItemDetailViewController {
//            if let cell = sender as? UITableViewCell,
//                let indexPath = tableView.indexPath(for: cell), let priority = priorityForSectionIndex(indexPath.section) {
//                let item = todoList.todolist(for: priority)[indexPath.row]
//                itemDetailViewController.itemToEdit = item
//                itemDetailViewController.delegate = self
//            }
//        }
    }
}

