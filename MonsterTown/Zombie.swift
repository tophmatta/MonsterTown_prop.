//
//  Zombie.swift
//  MonsterTown
//
//  Created by Toph Matta on 1/22/16.
//  Copyright © 2016 Toph Matta. All rights reserved.
//

import Foundation

class Zombie: Monster {
    
    var walksWithLimp = true
    
    final override func terrorizeTown() {
                
        while town?.population > 0 {
            
            if town?.population < 10 {
                
                town?.population = 0
                super.terrorizeTown()
                
                
            } else {
                
                town?.changePopulation(-10)
                super.terrorizeTown()
                return
                
            }
        }
    }
    
    func changeName(name: String, walksWithLimp: Bool){
        
        self.name = name
        self.walksWithLimp = walksWithLimp
        
    }
    
}