//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Aleksej Cupic on 1/18/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var awesomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad has run!")
        awesomeLabel.text = "Fabulous? That's You!"
    }


    @IBAction func messageButtonPressed(_ sender: Any) {
        print("The message button was pressed!")
        awesomeLabel.text = "You Are Awesome!"
    }
}

