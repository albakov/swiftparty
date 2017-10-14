//
//  PinchViewController.swift
//  SwiftParty
//
//  Created by Ramil on 11/10/2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {
    
    @IBAction func handlePinch(_ sender: UIPinchGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
            sender.scale = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
