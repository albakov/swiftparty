//
//  RotationGestureViewController.swift
//  SwiftParty
//
//  Created by Ramil on 10/10/2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class RotationGestureViewController: UIViewController {
    
    @IBAction func handleRotation(_ sender: UIRotationGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }

}
