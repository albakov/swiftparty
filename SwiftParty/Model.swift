//
//  Modal.swift
//  SwiftParty
//
//  Created by ismail on 30.09.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

struct Model {
    
    // MARK: Main variables
    
    // Main current Id of category
    static var currentId = 0
    
    // Main categories
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
        ["title":"Gestures", "segue":"gestures", "image":"RotateGesture"],
        ["title":"Picker View", "segue":"PickerView", "image":"PickerView"],
        ["title":"Date Picker View", "segue":"datePicker", "image":"DatePicker"],
    ]
    
    // MARK: Other variables
    static let pickerViewColorNames = ["red", "blue", "yellow", "green", "green 2", "green 3", "green 4", "green 5"]
    static let gesturesItems = [
        ["title":"Pan Gesture", "segue":"PanGesture", "image":"PanGesture"],
        ["title":"Rotate Gesture", "segue":"RotateGesture", "image":"RotateGesture"],
        ["title":"Pinch Gesture", "segue":"PinchGesture", "image":"PinchGesture"],
        ["title":"Tap Gesture", "segue":"TapGesture", "image":"TapGesture"],
        ["title":"Long Press Gesture", "segue":"LongPressGesture", "image":"LongPressGesture"],
        ["title":"Swipe Gesture", "segue":"SwipeGesture", "image":"SwipeGesture"],
    ]
}



