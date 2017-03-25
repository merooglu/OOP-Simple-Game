//
//  ViewController.swift
//  Oop
//
//  Created by Mehmet Eroğlu on 25.03.2017.
//  Copyright © 2017 Mehmet Eroğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    var player : Player!
    var enemy : Enemy!
    var chestMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Meroglu", hp: 130, attackPower: 20)
        
        generateRandomEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
        
    }

    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0{
            enemy = Kimara(startingHp: 70, attackPower: 12)
        }else {
            enemy = DevilWizard(startingHp: 80, attackPower: 15)
        }
        enemyImage.isHidden = false
    }
    
    @IBAction func attackTapped(_ sender: Any) {
        
        if enemy.attampAttack(attackPower: player.attackPower) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        }else {
            printLbl.text = "Attack was unsuccesful"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemInventory(item: loot)
            chestMessage = "\(player.name) found \(loot)"
            chestButton.isHidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImage.isHidden = true
        }
    }
        
    @IBAction func onChestTapped(_ sender: Any) {
        chestButton.isHidden = true
        printLbl.text = chestMessage
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
        

    
    }
    
    
}

