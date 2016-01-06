//
//  ViewController.swift
//  battleGame
//
//  Created by D'Andre Ealy on 12/11/15.
//  Copyright © 2015 D'Andre Ealy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var printLabel: UILabel!
    
    
    @IBOutlet weak var playerHpLabel: UILabel!
    
    @IBOutlet weak var enemyHpLabel: UILabel!
    
    @IBOutlet weak var enemyImage: UIImageView!
    
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chestButton.hidden = true
        
        player = Player(name: "Dre", healthPoints: 110, attackPower: 20)
        generateRandomEnemy()
        playerHpLabel.text = "\(player.healthPoints)"
        
        
        
    }
    
    func generateRandomEnemy(){
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startinghealthPoints: 50, attackPower: 12)
            
        }else {
            enemy = DevilWizard(startinghealthPoints: 60, attackPower: 15)
        }
        
        enemyImage.hidden = false
    }
    
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestButton.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        
    }
    
    
    @IBAction func attackedTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPower){
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHpLabel.text = "\(enemy.healthPoints) HP"
           
        }else {
            printLabel.text = "Attacked did not work!"
        }
        
        if let  loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLabel.text = ""
            printLabel.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

