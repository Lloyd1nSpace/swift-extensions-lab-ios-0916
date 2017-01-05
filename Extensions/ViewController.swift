//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fullName = "Lloyd W. Sykes"
        let phoneNumber = 8675309
        
        unicornLevelLabel.text = fullName.unicornLevel
        print(fullName.unicornLevel)
        print("Let's whisper: \(fullName.whisper())\n Now let's get loud: \(fullName.shout())")
        print("Pig Latin: \(fullName.pigLatin)")
        print("String points: \(fullName.points)")
        print("Phone number squared: \(phoneNumber.squared)")
        print("Phone number halved: \(phoneNumber.halved)")
        print("Is the phone number divisible by 10 🤔 \(phoneNumber.isDivisible(by: 10))")
    }
}


