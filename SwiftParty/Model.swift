//
//  Modal.swift
//  SwiftParty
//
//  Created by ismail on 30.09.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

struct Model {
    static var currentId = 0
    static let items = [
        ["title":"Alert", "segue":"alert", "image":"Alert"],
        ["title":"Label", "segue":"label", "image":"Label"],
        ["title":"Switch", "segue":"switch", "image":"Switch"],
        ["title":"Textfield", "segue":"textfield", "image":"TextField"],
        ["title":"Segment", "segue":"segment", "image":"Segment"],
        ["title":"Image Content Mode", "segue":"imageMods", "image":"ImageContentMode"],
        ["title":"Slider", "segue":"slider", "image":"Slider"],
        ["title":"Activity Indicator View", "segue":"activityIndicator", "image":"ActivityIndication"],
        ["title":"Stepper", "segue":"stepper", "image":"Stepper"],
        ["title":"Progress", "segue":"progress", "image":"Progress"],
    ]
}

