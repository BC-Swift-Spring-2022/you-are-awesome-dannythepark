//
//  ViewController.swift
//  Week One
//
//  Created by Danny Park on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var sayitButton: UIButton!
    let arrayofMessage = ["You are Awesome!", "You did it!",
                        "Okay okay", "Let's go!", "Nice...", "wOoohohoh", "This class is fun!", "Take me out to a ball game", "amaseamsauhamamakush"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("app loaded on ", Date())
        messageLabel.isHidden = true
    }
    @IBAction func messageButton(_ sender: Any) {
        print("Message Button was pressed")
        
    }
    
    @IBAction func sayitButton(_ sender: Any) {
        print("👉🏽The say it button was pressed", Date())
        messageLabel.text = arrayofMessage.randomElement()
        messageLabel.isHidden = false
        if (messageLabel.text == "You are Awesome!"){
            sayitButton.isHidden = true
        }
    }
    
}

