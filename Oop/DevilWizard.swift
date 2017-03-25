//
//  DevilWizard.swift
//  Oop
//
//  Created by Mehmet Eroğlu on 25.03.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String]{
        return ["Magic Wand", "Dark Amulet", "Solted Pork"]
    }
    
    override var type: String{
        return "Devil Wizard"
    }
}
