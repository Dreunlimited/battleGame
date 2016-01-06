//
//  Enemy.swift
//  battleGame
//
//  Created by D'Andre Ealy on 12/11/15.
//  Copyright © 2015 D'Andre Ealy. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String]{
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot()->String? {
        
        if !isAlive {
            
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
            
        }
        return nil
    }
}