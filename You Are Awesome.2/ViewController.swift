//
//  ViewController.swift
//  You Are Awesome.2
//
//  Created by Ej Perry on 1/18/18.
//  Copyright © 2018 Perry. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var awesomeImages: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = 0
    var imageIndex = 0
    let imageNum = 5
    let soundNum = 5
    var soundIndex = 0
    
    @IBOutlet weak var awesomeMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(soundName: String) {
        if let sound = NSDataAsset(name: soundName) {
        //Check if sound.data is a sound file
        do {
        try awesomePlayer = AVAudioPlayer(data: sound.data)
        awesomePlayer.play()
    
        } catch {
        print("ERROR: Sound in sound\(soundName) could not be played as audio" )
        }
        }else {
        // Error File Didn't Load
        print("Error file sound\(soundName) didn't load" )
        }
    
    
    }
    
    func nonRepeatingRandomNumber (lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while index == newIndex
        return newIndex
        
    }
    
    @IBAction func showMessageButoon(_ sender: UIButton) {
        
        let messages = ["You Are Da Bomb","You Are Great","You Are Amazing", "You belong in the genius bar"]
        
        //Show Messages
        index = nonRepeatingRandomNumber(lastNumber: index, maxValue: messages.count)
        awesomeMessage.text = messages[index]
        awesomeImages.isHidden = false
        
        //Show Images
        imageIndex = nonRepeatingRandomNumber(lastNumber: imageIndex, maxValue: imageNum)
        awesomeImages.image = UIImage(named: "Image\(imageIndex)")
        
        //Play Sounds
        soundIndex = nonRepeatingRandomNumber(lastNumber: soundIndex, maxValue: soundNum)
        playSound(soundName: "sound\(soundIndex)")
        
        
//        let message1 = "You Are Da Bomb"
//        let message2 = "You Are Great"
//        let message3 = "You Are Amazing"
//
//        if awesomeMessage.text == message1 {
//            awesomeMessage.text = message2
//        } else if awesomeMessage.text == message2{
//            awesomeMessage.text = message3
//        } else {
//            awesomeMessage.text = message1        }

        /*
        awesomeMessage.text = messages[index]
        index = index + 1
        if index == messages.count {
            index = 0
        */
        }
    }


