//
//  Player.swift
//  battleGame
//
//  Created by D'Andre Ealy on 12/11/15.
//  Copyright © 2015 D'Andre Ealy. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    private var _inventory = [String]()
    
    var name: String {
        get {
            return _name
        }
    }
    
    var inventory: [String]{
        get {
            return _inventory
        }
    }
    
    func addItemToInventory(item:String){
        _inventory.append(item)
    }
    
    convenience init(name: String, healthPoints:Int, attackPower:Int){
        self.init(startinghealthPoints: healthPoints, attackPower: attackPower)
        self._name = name 
    }
}