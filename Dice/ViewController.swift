//
//  ViewController.swift
//  Dice
//
//  Created by Kunlun Chen on 8/15/18.
//  Copyright © 2018 Kunlun Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    var randomDiceIndex3 : Int = 0
    var randomDiceIndex4 : Int = 0
    var randomDiceIndex5 : Int = 0

    let dices = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var diceImageView5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pressedRoll(_ sender: UIButton) {
        
        rollDiceImages()

    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){ // motion detecting
        rollDiceImages()
    }
    
    func rollDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        randomDiceIndex3 = Int(arc4random_uniform(6))
        randomDiceIndex4 = Int(arc4random_uniform(6))
        randomDiceIndex5 = Int(arc4random_uniform(6))

        
        diceImageView1.image = UIImage(named:dices[randomDiceIndex1])
        diceImageView2.image = UIImage(named:dices[randomDiceIndex2])
        diceImageView3.image = UIImage(named:dices[randomDiceIndex3])
        diceImageView4.image = UIImage(named:dices[randomDiceIndex4])
        diceImageView5.image = UIImage(named:dices[randomDiceIndex5])
    }
}

