//
//  Kimara.swift
//  battleGame
//
//  Created by D'Andre Ealy on 12/11/15.
//  Copyright © 2015 D'Andre Ealy. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String]{
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower >= IMMUNE_MAX {
            return super.attemptAttack(attackPower)
        }else {
            return false
        }
    }
    
}