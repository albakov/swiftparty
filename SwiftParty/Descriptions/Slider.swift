//
//  Slider.swift
//  SwiftParty
//
//  Created by ismail on 01.10.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class Slider: UIViewController {

    // Slider outlet
    @IBOutlet weak var sliderOutlet: UISlider!

    // Label outlet
    @IBOutlet weak var labelOutlet: UILabel!
    
    // TextView outlet
    @IBOutlet weak var textViewOutlet: UITextView!

    // Image outlet
    @IBOutlet weak var imageOutlet: UIImageView!
    
    // Label positions
    let labelPositions = [
        "Вы только начали...",
        "Поднажмите!",
        "Уже не плохо!",
        "Еще чуть-чуть",
        "Вы справились!",
    ]
    
    // TextView options
    let textViewOptions = [
        "значениями",
        "параметрами",
        "опциями",
        "атрибутами",
        "цифрами",
    ]

    // Action slider when value changed
    @IBAction func sliderAction(_ sender: UISlider) {
        let currentSliderValue = Int(sender.value)
        
        // Change label while change slider value
        labelOutlet.text = labelPositions[currentSliderValue]
        
        // Change some word in textView
        textViewOutlet.text = """
        Слайдер позволяет интуитивно понятно менять значение какого-либо параметра. Задается начальное, конечное и текущее значения.
        
        Далее можно пользоваться этими изменяемыми \(textViewOptions[currentSliderValue]) для самых разных целей, от указания параметров до плавных слайдов изображений!
        """

        // Change image while change slider value
        imageOutlet.image = UIImage(named: "car_\(currentSliderValue)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
        
        // set begin value for label
        labelOutlet.text = labelPositions[0]
    }

}
