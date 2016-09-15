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

    var highScore = Int()
    var pita = Float()
    var kapha = Float()
    var vata = Float()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pitaLabel.text = String (lroundf((pita / (pita + vata + kapha)) * 100)) + "%"
        vataLabel.text = String (lroundf((vata/(pita + vata + kapha)) * 100)) + "%"
        kaphaLabel.text = String (lroundf((kapha/(pita + vata + kapha)) * 100)) + "%"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func StartAgainButton(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
}
