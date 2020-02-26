//
//  GameScene.swift
//  Solo Mission
//
//  Created by DEV on 2/24/20.
//  Copyright © 2020 DEV. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var player = SKSpriteNode(imageNamed: "playerShip")
    override func didMove(to view: SKView) {
        player.position = CGPoint(x: self.size.width / 2, y: self.size.height / 5)
        
        self.addChild(player)
    }
    func SpawBullets(){
        var Bullets = SKSpriteNode(imageNamed: "bullet")
        Bullets.zPosition = -5
        Bullets.position = CGPoint(x: player.position.x, y: player.position.y)
        self.addChild(Bullets)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
            let location = touch.location(in: self)
            player.position.x = location.x
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
        let location = touch.location(in: self)
        player.position.x = location.x
    }
}
