//
//  DescriptionViewController.swift
//  SwiftParty
//
//  Created by ismail on 30.09.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class Label: UIViewController {

    // Label outlet
    @IBOutlet weak var labelOutlet: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
        labelOutlet.sizeToFit()
    }

}
