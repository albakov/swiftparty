//
//  GesturesTableViewCell.swift
//  SwiftParty
//
//  Created by Ramil on 10/10/2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class GesturesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
