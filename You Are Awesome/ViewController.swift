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
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // print("viewDidLoad has run!")
        // messageLabel.text = "Fabulous? That's You!"
    }
 
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic",
                        "Fabulous? That's You!",
                        "When The Genius Bar Needs Help, They Call You!",
                        "You've Got The Design Skills of Jony Ive"]
      
        
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count - 1)
        } while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
    }
}

