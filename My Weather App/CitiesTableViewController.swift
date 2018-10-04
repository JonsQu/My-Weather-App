//
//  CitiesTableViewController.swift
//  My Weather App
//
//  Created by ShadoWalker on 4.10.2018.
//  Copyright © 2018 ShadoWalker. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    
}
