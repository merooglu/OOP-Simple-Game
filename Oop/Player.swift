//
//  Player.swift
//  Oop
//
//  Created by Mehmet Eroğlu on 25.03.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import Foundation

class Player : Character{
    
    private var _name = "Player"
    
    var name : String{
        get{
            return _name
        }
    }
    
    private var _inventory = [String]()
    //bu biraz farklı
    var inventory : [String]{
        get{
            return _inventory
        }
    }
    
    func addItemInventory (item : String) {
        _inventory.append(item)
    }
    
    convenience init (name : String, hp: Int, attackPower: Int ){
        self.init(startingHp: hp, attackPower: attackPower)
        _name = name
    }
}
