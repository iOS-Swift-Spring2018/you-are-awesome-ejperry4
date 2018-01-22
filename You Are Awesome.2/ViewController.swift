//
//  ViewController.swift
//  You Are Awesome.2
//
//  Created by Ej Perry on 1/18/18.
//  Copyright © 2018 Perry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 0
    @IBOutlet weak var awesomeMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func showMessageButoon(_ sender: UIButton) {
        
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
        let messages = ["You Are Da Bomb","You Are Great","You Are Amazing", "You belong in the genius bar"]
        awesomeMessage.text = messages[index]
        index = index + 1
        if index == messages.count {
            index = 0
        }
    }
}

