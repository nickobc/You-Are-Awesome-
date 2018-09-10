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
    var index = 0
    
    
    // code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
    }
    
 @IBAction func showMessagePressed(_ sender: UIButton) {
    
    let messages = ["You Are Awesome!",
                    "You Are Great!",
                    "You Are Fantastic!",
                    "When the Genius Bar needs help, they call you",
                    "You Brighton my day!",
                    "You Are Da Bomb!",
                    "Hey, fabulous!",
                    "You Are Tremendous!",
                    "You've got the design skills of Jony Ive!",
                    "I can't wait to download your app!"]
    
    var newIndex: Int
    
    repeat {
        newIndex = Int.random(in: 0..<messages.count)
    } while index == newIndex
    
    index = newIndex
    messageLabel.text = messages[index]
    
    
//    messageLabel.text = messages.randomElement()!
    
    
//messageLabel.text = messages[index]
    
//  if index == messages.count - 1 {
//    index = 0
// } else {
//     index = index + 1
//   }
    
    
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//        messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
//    }
    
}

}
