//
//  GestureTableViewController.swift
//  SwiftParty
//
//  Created by Ramil on 10/10/2017.
//  Copyright © 2017 SwiftParty. All rights reserved.
//

import UIKit

class GestureTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Model.items[Model.currentId]["title"]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Model.gesturesItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! GesturesTableViewCell
        cell.label.text = Model.gesturesItems[indexPath.row]["title"]
        cell.imageCell.image = UIImage(named: Model.gesturesItems[indexPath.row]["image"]!)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let segue = Model.gesturesItems[indexPath.row]["segue"] {
                performSegue(withIdentifier: segue, sender: self)
        }
        
        // убираем выделение при нажатии на ячейку
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
