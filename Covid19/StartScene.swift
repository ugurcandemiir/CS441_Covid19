

import Foundation
import SpriteKit

class StartScene : SKScene {
    

    override func didMove(to view: SKView) {
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /* Called when a touch begins */
        
        startGame()
    }
    
    func startGame() {        
        let transition = SKTransition.reveal(with: SKTransitionDirection.down, duration: 1.0)
        
        let scene = GameScene(size: self.scene!.size)
        scene.scaleMode = SKSceneScaleMode.fill //AspectFit
        scene.backgroundColor = UIColor.black
        
        self.scene?.view?.presentScene(scene, transition: transition)
    }


}
