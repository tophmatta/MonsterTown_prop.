//
//  Vampire.swift
//  MonsterTown
//
//  Created by Toph Matta on 1/24/16.
//  Copyright © 2016 Toph Matta. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    var vampireArray = [String]()
    
    func createVampireWithName(name: String) {
        
        vampireArray.append(name)
        super.name = name
        
    }
    
    final override func terrorizeTown() {
        
        while town?.population > 0 && vampireArray.count > 0 {
                
            town?.changePopulation(-1)
            super.terrorizeTown()
            return
            
        }
        
    }
    
}