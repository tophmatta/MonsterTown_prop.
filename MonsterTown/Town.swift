//
//  Town.swift
//  MonsterTown
//
//  Created by Toph Matta on 1/21/16.
//  Copyright © 2016 Toph Matta. All rights reserved.
//

import Foundation

struct Town {
    
    let region = "South"
    var population = 5422 {
        
        didSet(oldPopulation){
            
            print("The population went from \(oldPopulation) to \(population)")
            
        }
        
    }
    var numberOfStoplights = 10
    
    enum Size {
        
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {
        
        get {
           
            switch self.population {
                
            case 0...10000:
                return Size.Small
                
            case 10001...100000:
                return Size.Medium
                
            default:
                return Size.Large
                
            }
        }
    }
    
    func printTownDescription() {
        
        print("Population: \(population), number of stoplights: \(numberOfStoplights)")
        
    }
    
    mutating func changePopulation(amount: Int) {
        
        population += amount
        
    }
    
}
