//
//  ImageContentMode.swift
//  SwiftParty
//
//  Created by Захар Бабкин on 30.09.17.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class ImageContentMode: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if switchOutlet.isOn {
            image.clipsToBounds = true
        } else {
            image.clipsToBounds = false
        }
    }
    
    @IBAction func buttonsActions(_ sender: UIButton) {
        switch sender.tag {
            case 1: image.contentMode = .scaleToFill
            case 2: image.contentMode = .scaleAspectFit
            case 3: image.contentMode = .scaleAspectFill
            case 4: image.contentMode = .redraw
            case 5: image.contentMode = .center
            case 6: image.contentMode = .top
            case 7: image.contentMode = .bottom
            case 8: image.contentMode = .left
            case 9: image.contentMode = .right
            case 10: image.contentMode = .topLeft
            case 11: image.contentMode = .topRight
            case 12: image.contentMode = .bottomLeft
            case 13: image.contentMode = .bottomRight
            default:return
        }
    }
}
