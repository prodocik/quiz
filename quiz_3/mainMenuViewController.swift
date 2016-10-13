//
//  mainMenuViewController.swift
//  quiz_3
//
//  Created by Ivan on 13.10.16.
//  Copyright © 2016 dots. All rights reserved.
//

import UIKit

class mainMenuViewController: UIViewController {
    @IBOutlet weak var multitext: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //start scroll at top of text
        multitext.scrollRangeToVisible(NSMakeRange(0, 0))
    }

}
