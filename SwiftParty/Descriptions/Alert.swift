//
//  DescriptionViewController.swift
//  SwiftParty
//
//  Created by ismail on 30.09.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class Alert: UIViewController {

    // button outlet
    @IBOutlet weak var button: UIButton!

    // do something when button pressed
    @IBAction func buttonAction(_ sender: UIButton) {
        
        // create alert controller
        let controller = UIAlertController(title: "Заголовок окна", message: "Сообщение в окне", preferredStyle: .alert)
        
        // create alert action
        let action = UIAlertAction(title: "Название кнопки", style: .default) { (actionAfter) in
            print("Кнопка была нажата")
        }
        
        // add action to controller
        controller.addAction(action)
        
        // view controller
        self.present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
    }

}
