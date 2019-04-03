//
//  ViewController.swift
//  Example_02
//
//  Created by GIT p501 on 4/3/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer: Timer!
    
    deinit {}

    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(fire),
            userInfo: nil,
            repeats: true)
    }
    
    func getCurrentDateString() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, dd-MM-yyyy hh:mm:ss"
        let currentDateString = dateFormatter.string(from: date)
        return currentDateString
    }
    
    @objc func fire() {
        let today = getCurrentDateString()
        timeLabel.text = today
    }
    
}

