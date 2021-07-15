//
//  ViewController.swift
//  FirstXcode
//
//  Created by Moyu Terao on 2021/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!
    
    @IBAction func buttonTapped(sender: UIButton) {
        myLabel.text = "Hello World!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

