//
//  DescriptionViewController.swift
//  SwiftParty
//
//  Created by ismail on 30.09.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class TextField: UIViewController, UITextFieldDelegate {

    // Text Field Outlet
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    // Label Outlet
    @IBOutlet weak var labelOutlet: UILabel!
    
    // Action after pressed return on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        labelOutlet.text = textField.text != "" ? textField.text : "Введите текст в поле ниже"

        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldOutlet.delegate = self
        self.title = Model.items[Model.currentId]["title"]
    }

}
