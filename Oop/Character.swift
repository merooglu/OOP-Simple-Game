//
//  Character.swift
//  Oop
//
//  Created by Mehmet Eroğlu on 25.03.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp : Int = 100
    private var _attackPower : Int = 10
    
    var attackPower : Int {
        get{
            return _attackPower
        }
    }
    
    var hp : Int {
        get{
            return _hp
        }
    }
    
    var isAlive : Bool{
        if hp <= 0{
            return false
        } else {
            return true
        }
    }
    
    init(startingHp: Int, attackPower: Int) {
        self._hp = startingHp
        self._attackPower = attackPower
    }
    
    func attampAttack(attackPower : Int) -> Bool{
        self._hp -= attackPower
        
        return true
    }
}
