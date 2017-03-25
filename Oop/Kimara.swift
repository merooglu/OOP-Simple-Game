//
//  Kimara.swift
//  Oop
//
//  Created by Mehmet Eroğlu on 25.03.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attampAttack(attackPower: Int) -> Bool {
        if attackPower > IMMUNE_MAX {
             return super.attampAttack(attackPower: attackPower)
        }else {
            return false
        }
    }
}
