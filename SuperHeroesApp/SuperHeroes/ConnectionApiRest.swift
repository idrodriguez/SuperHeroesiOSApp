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

    func getListSuperHeroFromAPI(){
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse,
                httpResponse.statusCode == 200
            else {
                return
            }
            
            guard let data = data else {
                print(error.debugDescription)
                return
            }
            
            if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String? {
                print(result)
            }
        }
        
        task.resume()
    }
}
