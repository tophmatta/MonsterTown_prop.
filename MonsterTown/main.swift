//
//  main.swift
//  MonsterTown
//
//  Created by Toph Matta on 1/21/16.
//  Copyright © 2016 Toph Matta. All rights reserved.
//

import Foundation


var myTown = Town()
let ts = myTown.townSize
print(ts)

let fredTheZombie = Zombie()
let chocoTheVampire = Vampire()

myTown.changePopulation(1000000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)

chocoTheVampire.town = myTown
chocoTheVampire.createVampireWithName("Count Chocula")
chocoTheVampire.terrorizeTown()
chocoTheVampire.town?.printTownDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500

print("Victim pool: \(fredTheZombie.victimPool)")