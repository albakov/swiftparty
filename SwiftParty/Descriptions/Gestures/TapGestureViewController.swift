//
//  TapGestureViewController.swift
//  SwiftParty
//
//  Created by Ramil on 11/10/2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class TapGestureViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        textField.text = "Прекрасно!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
