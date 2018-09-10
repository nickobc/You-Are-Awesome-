//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Nicholas O'Brien Cannon on 9/5/18.
//  Copyright © 2018 Nicholas O'Brien Cannon. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String) {
        if let sound = NSDataAsset(name: soundName){
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else {
            print("ERROR: file \(soundName) didn't load")
        }
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

    
    // Show A Message
    index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
    messageLabel.text = messages[index]
    
    
    
    // Show An Image
    imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
    awesomeImageView.image = UIImage(named: "image\(imageIndex)")
    
    
    
    // Play A Sound
    soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
    playSound(soundName: "sound\(soundIndex)")
}

}
