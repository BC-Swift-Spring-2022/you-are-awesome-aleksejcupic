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
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // print("viewDidLoad has run!")
        // messageLabel.text = "Fabulous? That's You!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!", "You Are Great!", "You Are Fantastic", "Fabulous? That's You!", "When The Genius Bar Needs Help, They Call You!", "You've Got The Design Skills of Jony Ive"]
        
        
        var newMessage = messages[Int.random(in: 0...messages.count - 1)]
        
        while messageLabel.text == newMessage {
            print("*** There was a repeating value. Both newMessage and messageLabel.text = \(newMessage) and \(messageLabel.text!)")
            newMessage = messages[Int.random(in: 0...messages.count - 1)]
        }
        messageLabel.text = newMessage
        
        
        var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
        while imageView.image == newImage {
            print("*** There was a repeating value. Both newImage and imageView.image are equal")
            newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        }
        imageView.image = newImage
        
    }
}

