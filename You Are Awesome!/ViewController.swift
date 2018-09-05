//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Nicholas O'Brien Cannon on 9/5/18.
//  Copyright © 2018 Nicholas O'Brien Cannon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        print("The Button Was Clicked!")
        messageLabel.text = "You Are Awesome!"
        messageLabel.textColor = UIColor.red
    }
    
    @IBAction func showAnotherMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Great!"
        messageLabel.textColor = UIColor.blue
    }
    
}

