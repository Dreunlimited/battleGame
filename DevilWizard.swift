//
//  DevilWizard.swift
//  battleGame
//
//  Created by D'Andre Ealy on 12/11/15.
//  Copyright © 2015 D'Andre Ealy. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizward"
    }
}