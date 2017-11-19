//
//  DatePicker.swift
//  SwiftParty
//
//  Created by ismail on 19.11.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

final class DatePicker: UIViewController {

    @IBOutlet weak var LabelOutletFullDate: UILabel!
    @IBOutlet weak var DatePickerOutlet: UIDatePicker!
    @IBOutlet weak var LabelOutletDayOfWeek: UILabel!
    @IBOutlet weak var LabelOutletMonth: UILabel!
    @IBOutlet weak var LabelOutletHours: UILabel!
    @IBOutlet weak var LabelOutletMinutes: UILabel!
    @IBOutlet weak var LabelOutletSeconds: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
    }
    
    @IBAction func DatePickerAction(_ sender: UIDatePicker) {

        // Get value from DatePicker
        let fullDate = DatePickerOutlet.date.description
        
        // Create formatter
        let dateFormatter = DateFormatter()
        
        // Set Russian locale
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        // Full date
        LabelOutletFullDate.text = fullDate
        
        // Day of week
        dateFormatter.dateFormat = "EEEE"
        LabelOutletDayOfWeek.text = "День: \(dateFormatter.string(from: DatePickerOutlet.date))"
        
        // Month
        dateFormatter.dateFormat = "MMM"
        LabelOutletMonth.text = "Месяц: \(dateFormatter.string(from: DatePickerOutlet.date))"
        
        // Hours
        dateFormatter.dateFormat = "H"
        LabelOutletHours.text = "Часы: \(dateFormatter.string(from: DatePickerOutlet.date))"
        
        // Minutes
        dateFormatter.dateFormat = "mm"
        LabelOutletMinutes.text = "Минуты: \(dateFormatter.string(from: DatePickerOutlet.date))"
        
        // Seconds
        dateFormatter.dateFormat = "ss"
        LabelOutletSeconds.text = "Секунды: \(dateFormatter.string(from: DatePickerOutlet.date))"
    }
    
}
