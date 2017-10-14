//
//  First.swift
//  SwiftParty
//
//  Created by ismail on 30.09.2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class First: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Table outlet
    @IBOutlet weak var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Add title to each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableCell
        
        cell.label.text = Model.items[indexPath.row]["title"]
        cell.imageCell.image = UIImage(named: Model.items[indexPath.row]["image"]!)
        cell.label.sizeToFit()
        
        return cell
    }
    
    // Return count if items
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.items.count
    }
    
    // Show full description of each cell item after select
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Model.currentId = indexPath.row
        // TODO; do smth here
       if let segue = Model.items[indexPath.row]["segue"] {
        performSegue(withIdentifier: segue, sender: self) }
        
        // убираем выделение при нажатии на ячейку
        table.deselectRow(at: indexPath, animated: true)
    }

}
