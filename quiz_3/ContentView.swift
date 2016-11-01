//
//  ContentView.swift
//  quiz_3
//
//  Created by Ivan on 21.10.16.
//  Copyright © 2016 dots. All rights reserved.
//

import UIKit
import Foundation

class ContentView: UIViewController {
    @IBOutlet weak var imageHeader: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!

    var row = "none"
    var imgageNumber = 0
    
    var imageArray = [#imageLiteral(resourceName: "5ayu"), #imageLiteral(resourceName: "2ayu"),#imageLiteral(resourceName: "ayu4"),#imageLiteral(resourceName: "ayu6"),#imageLiteral(resourceName: "ayu3"),#imageLiteral(resourceName: "ayu7")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentLabel.text = row
        imageHeader.image = imageArray[imgageNumber]
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
