//
//  Stepper.swift
//  SwiftParty
//
//  Created by Захар Бабкин on 01.10.17.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class Stepper: UIViewController {

    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        
        number.text = String(describing: Int(sender.value))
        
    }
}
