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
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else {
            label.text = "Выключено"
            view.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
            label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
        label.sizeToFit()
    }

}
