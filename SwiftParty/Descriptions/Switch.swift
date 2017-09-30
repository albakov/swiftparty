//
//  Switch.swift
//  SwiftParty
//
//  Created by ismail on 30.09.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class Switch: UIViewController {
    
    // Label outlet
    @IBOutlet weak var label: UILabel!
    
    // Switch outlet
    @IBOutlet weak var switchOutlet: UISwitch!
    
    // Switch action event
    @IBAction func switchAction(_ sender: UISwitch) {
        if switchOutlet.isOn {
            label.text = "Включено"
        } else {
            label.text = "Выключено"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
        label.sizeToFit()
    }

}
