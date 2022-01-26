//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Aleksej Cupic on 1/18/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // print("viewDidLoad has run!")
        // messageLabel.text = "Fabulous? That's You!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!", "You Are Great!", "You Are Fantastic", "Fabulous? That's You!"]
        
        messageLabel.text = messages[messageNumber]
        messageNumber += 1
        if messageNumber == messages.count {
            messageNumber = 0
        }

        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber += 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        
        //        // print("The message button was pressed!")
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        } else if messageLabel.text == greatMessage {
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image0")
        //        } else {
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image2")
        //          }
    }
}

