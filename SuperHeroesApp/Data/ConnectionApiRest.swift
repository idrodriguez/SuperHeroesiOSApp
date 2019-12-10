//
//  ConnectionApiRest.swift
//  SuperHeroesApp
//
//  Created by Castro, Jose Rubén on 26/11/2019.
//  Copyright © 2019 Galera, Javier. All rights reserved.
//

import Foundation

class ConnectionApiRest {
    let url = URL(string: "https://bs-university-superheroes.herokuapp.com")!
    
    func getListSuperHeroFromAPI()-> [Dictionary<String, AnyObject>]?{
        do {
            if let file = URL(string: "https://bs-university-superheroes.herokuapp.com") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [String: Any] {
                    print(object)
                } else if let object = json as? [Dictionary<String, AnyObject>]{
                    return object
                    
                } else {
                    print("JSON is invalid")
                }
            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }
    

}
