//
//  LongPressGestureViewController.swift
//  SwiftParty
//
//  Created by Ramil on 11/10/2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class LongPressGestureViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var square: UIView!
    
    @IBAction func handleLongPress(_ sender: UILongPressGestureRecognizer) {
        UIView.animate(withDuration: 0.6, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.square.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.square.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        }, completion: nil)
        label.text = "Сработало!"
    }

}
