//
//  ViewController.swift
//  DigitalClock
//
//  Created by GIT p501 on 4/5/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var weekDateLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(fire),
            userInfo: nil,
            repeats: true)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.hourLabel.text = nil
        self.dateLabel.text = nil
        self.weekDateLabel.text = nil
        self.secondLabel.text = nil
    }
    
    func getCurrentHourString() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        let currentDateString = dateFormatter.string(from: date)
        return currentDateString
    }
    
    func getCurrentDateString() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd,  yyyy"
        let currentDateString = dateFormatter.string(from: date)
        return currentDateString
    }
    
    func getCurrentWeekDateString() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE"
        let currentDateString = dateFormatter.string(from: date)
        return currentDateString
    }
    
    func getCurrentSecondString() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = ":ss"
        let currentDateString = dateFormatter.string(from: date)
        return currentDateString
    }
    
    @objc func fire() {
        let hourString = getCurrentHourString()
        let dateString = getCurrentDateString()
        let weekDateString = getCurrentWeekDateString()
        let secondString = getCurrentSecondString()
        hourLabel.text = hourString
        dateLabel.text = dateString
        weekDateLabel.text = weekDateString
        secondLabel.text = secondString
    }

}

