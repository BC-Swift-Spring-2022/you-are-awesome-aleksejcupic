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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // print("viewDidLoad has run!")
        // messageLabel.text = "Fabulous? That's You!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // print("The message button was pressed!")
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
        } else if messageLabel.text == greatMessage {
            messageLabel.text = bombMessage
            imageView.image = UIImage(named: "comedy-wildlife-awards-squirel-stop")
        } else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image2")
        }
    }
}

