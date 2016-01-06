//
//  Character.swift
//  battleGame
//
//  Created by D'Andre Ealy on 12/11/15.
//  Copyright © 2015 D'Andre Ealy. All rights reserved.
//

import Foundation

class Character{
    
    private var _healthPoints: Int = 100
    private var _attackPower: Int = 10
    
    var healthPoints: Int {
        
        get{
            return _healthPoints
        }
    }
    var attackPower: Int {
        get{
            return _attackPower
        }
        
    }
    
    var isAlive: Bool {
        
        if healthPoints <= 0 {
            return false
        }else {
            return true
        }
    }
    
    init(startinghealthPoints: Int, attackPower: Int){
        self._healthPoints = startinghealthPoints
        self._attackPower = attackPower
    }
    
    func attemptAttack(attackPower:Int)->Bool{
        
        self._healthPoints -= attackPower
        return true
        
    }
    
}