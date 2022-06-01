//
//  ViewController.swift
//  game-mode
//
//  Created by mac on 14/05/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var buttonPress: UIButton!
    @IBOutlet weak var newView: UIView!
    @IBOutlet weak var ironMan: UIImageView!
    @IBOutlet weak var gameMode: UILabel!
    @IBOutlet weak var modeOn: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "avengers", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
        
        /*let path = Bundle.main.path(forResource: "avengers", ofType: "mp3")!
               let url = URL(fileURLWithPath: path)
               do {
                   player = try AVAudioPlayer(contentsOf: url)
                   player.prepareToPlay()
               } catch let error as NSError {
                   print(error.description)
               }
           }*/

    @IBAction func buttonPressed(_ sender: Any) {
        newView.isHidden = false
        buttonPress.isHidden = true
        darkBlueBG.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.ironMan.frame = CGRect(x: 0, y: 155, width: 375, height: 402)
        }) { (finished) in //Read about closure
            self.gameMode.isHidden = false
            self.modeOn.isHidden = false
        }
        
                
                /*UIView.animate(withDuration: 2.3, animations: {
                    self.ironMan.frame = CGRect(x: 0, y: 155, width: 375, height: 402)
                }) { (finished) in
                    self.gameMode.isHidden = false
                    self.modeOn.isHidden = false
                }*/

    }
    
}

