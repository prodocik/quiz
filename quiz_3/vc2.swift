//
//  vc2.swift
//  quiz_3
//
//  Created by Ivan on 04.09.16.
//  Copyright © 2016 dots. All rights reserved.
//

import UIKit


class Vc2: UIViewController {
    @IBOutlet weak var kaphaLabel: UILabel!
    @IBOutlet weak var vataLabel: UILabel!
    @IBOutlet weak var pitaLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    var highScore = Int()
    var pita = Int()
    var kapha = Int()
    var vata = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highScoreLabel.text = String(highScore)
        pitaLabel.text = String (pita)
        vataLabel.text = String (vata)
        kaphaLabel.text = String (kapha)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func StartAgainButton(sender: UIButton) {
        self.dismissViewControllerAnimated(false, completion: nil)
    }
}