//
//  vc2.swift
//  quiz_3
//
//  Created by Ivan on 04.09.16.
//  Copyright © 2016 dots. All rights reserved.
//

import UIKit


class Vc2: UIViewController{
    @IBOutlet weak var highScoreLabel: UILabel!
    
var highScore = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highScoreLabel.text = String(highScore)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    

    
}