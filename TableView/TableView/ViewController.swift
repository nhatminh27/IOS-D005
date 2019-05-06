//
//  ViewController.swift
//  TableView
//
//  Created by GIT p501 on 5/6/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var foodTableView: UITableView!
    
    let supplies = [
        ["no": "2","name": "Egg"],
        ["no": "1","name": "Vanila extract"],
        ["no": "1","name": "Canned Pumpkin"],
        ["no": "1/2","name": "Evaporated milk"],
        ["no": "1","name": "Flour"],
        ["no": "1/2","name": "Sugar"],
        ["no": "1","name": "Pumpkin pie spice"],
        ["no": "1/2","name": "Baking power"],
        ["no": "1/2","name": "Salt"],
        ["no": "1","name": "Cinnamom"],
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        foodTableView.dataSource = self
        foodTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return supplies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SupplieViewCell") as? SupplieViewCell
        let supplie = supplies[indexPath.row]
        let no = supplie["no"]
        let name = supplie["name"]
        cell?.noLabel.text = no
        cell?.nameLabel.text = name
        return cell!
    }

}

