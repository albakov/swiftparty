//
//  PanGestureViewController.swift
//  SwiftParty
//
//  Created by Ramil on 10/10/2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class PanGestureViewController: UIViewController {

    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let view = sender.view {
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
