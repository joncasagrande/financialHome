//
//  Custo.swift
//  financialHome
//
//  Created by Jonathan on 27/09/17.
//  Copyright © 2017 com.jonathan. All rights reserved.
//

import Foundation
class Custo{
    @objc dynamic var preco: Double = 0.0
    @objc dynamic var date: Date!
    @objc dynamic var local: String = ""
    @objc dynamic var obs: String = ""
    
    
    init(preco: Double,date: Date, local: String, obs: String) {
        self.preco  = preco
        self.date = date
        self.local = local
        self.obs = obs
    }
    
    func toJson()-> String{
        return "{ preco: \(preco) , date: \(date) , local: \(local), obs: \(obs) }"
    }
    func toAnyObject() -> Any {
        return [
            "preco": preco,
            "date": date,
            "local": local,
            "obs": obs
        ]
    }
}
