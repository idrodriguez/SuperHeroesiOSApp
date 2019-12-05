//
//  ViewController.swift
//  SuperHeroesApp
//
//  Created by Galera, Javier on 18/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    var superHeroDelegate = MainTableDelegate()
    var superHeroDatasource = MainTableDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = superHeroDatasource
        tableView.delegate = superHeroDelegate
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailTableViewController = segue.destination as? DetailTableViewController {
            if let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell){
                let superHero =  superHeroDatasource.superHeroArray[indexPath.row]
                detailTableViewController.superHero = superHero
            }
        }
    }
    
    @IBAction func enableEdit(_ sender: UIBarButtonItem) {
        tableView.isEditing = !tableView.isEditing
    }
}

