//
//  Segment.swift
//  SwiftParty
//
//  Created by ismail on 30.09.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class Segment: UIViewController {

    // Segment Outlet
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    // Text View Outlet
    @IBOutlet weak var textView: UITextView!
    
    // Text View data
    let textViewData = [
        "Segment - список опций, каждую из которых можно выбрать...",
        "...Поведение Segment напоминает radio-кнопки в HTML...",
        " ...Можно выбрать только одно состояние."
    ]
    
    // Action when segment value changed
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        textView.text = textViewData[segmentOutlet.selectedSegmentIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
    }

}
