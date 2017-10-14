//
//  Progress.swift
//  SwiftParty
//
//  Created by ismail on 09.10.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class Progress: UIViewController {

    // Create timer
    var timer = Timer()
    
    // Set time
    var progressValue = 0.0
    
    // Progress outlet
    @IBOutlet weak var progressOutlet: UIProgressView!
    
    // Button outlet
    @IBOutlet weak var btnOutlet: UIButton!

    // Loading outlet
    @IBOutlet weak var loadingOutlet: UIActivityIndicatorView!
    
    // Button action
    @IBAction func buttonAction(_ sender: UIButton) {

        // Show loading icon
        loadingOutlet.alpha = 1

        // Start Activity Indicator animating
        loadingOutlet.startAnimating()

        // Change button text and size
        changeButtonView("Гружу...")

        // Create timer and cicle
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(progressBar), userInfo: nil, repeats: true)

    }
    
    // Init progress bar
    @objc func progressBar() {

        // If finish
        if progressValue + 1 <= 10 {

            progressValue = progressValue + 1
            progressOutlet.progress = Float(progressValue / 10)

        } else {

            // Stop loading
            loadingOutlet.stopAnimating()

            // Hide loading icon
            loadingOutlet.alpha = 0

            // Set progress value
            progressValue = 0

            // Change button text and size
            changeButtonView("Начать сначала!")

            // Kill timer
            timer.invalidate()

        }

    }

    // Change button text and size
    func changeButtonView(_ message: String) {
        btnOutlet.setTitle(message, for: .normal)
        btnOutlet.sizeToFit()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
    }
    
}
