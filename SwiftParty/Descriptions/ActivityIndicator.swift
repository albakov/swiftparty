//
//  ActivityIndicator.swift
//  SwiftParty
//
//  Created by Захар Бабкин on 01.10.17.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class ActivityIndicator: UIViewController {

    @IBOutlet weak var activityIndicatorOutlet: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = Model.items[Model.currentId]["title"]
    }
    
    
    @IBAction func startStopAction(_ sender: UIButton) {
        switch sender.tag {
        case 1: activityIndicatorOutlet.startAnimating()
        case 2: activityIndicatorOutlet.stopAnimating()
        default: return
        }
    }
    
}
