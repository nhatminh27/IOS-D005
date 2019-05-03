//
//  ViewController.swift
//  DigitalClock
//
//  Created by GIT p501 on 4/5/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var weekDateLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!

    var timerButton: UIButton!
    var settingButton: UIButton!
    var themeButton: UIButton!
    var notiButton: UIButton!
    var notiStatusLabel: UILabel = {
        let lb = UILabel()
        lb.text = "OFF"
        lb.textColor = .green
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()

    var didSetupConstraints = false
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(fire),
            userInfo: nil,
            repeats: true)
        setUpUI()
    }

    func setUpUI() {
        //set up timer button
        timerButton = UIButton()
        timerButton.translatesAutoresizingMaskIntoConstraints = false
        timerButton.setImage(UIImage(named: "ic_timer"), for: .normal)
        timerButton.addTarget(self, action: #selector(self.timerButtonClick(_:)), for: .touchUpInside)
        view.addSubview(timerButton)

        //set up setting button
        settingButton = UIButton()
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        settingButton.setImage(UIImage.init(named: "ic_settings"), for: .normal)
        settingButton.addTarget(self, action: #selector(self.settingButtonClick(_:)), for: .touchUpInside)
        view.addSubview(settingButton)

        //set up theme Button
        themeButton = UIButton()
        themeButton.translatesAutoresizingMaskIntoConstraints = false
        themeButton.setImage(UIImage(named: "ic_themes"), for: .normal)
        themeButton.addTarget(self, action: #selector(self.themeButtonClick(_:)), for: .touchUpInside)
        view.addSubview(themeButton)

        //set up noti Button
        notiButton = UIButton()
        notiButton.translatesAutoresizingMaskIntoConstraints = false
        notiButton.setImage(UIImage(named: "ic_notification"), for: .normal)
        notiButton.addTarget(self, action: #selector(self.notiButtonClick(_:)), for: .touchUpInside)
        view.addSubview(notiButton)

        view.addSubview(notiStatusLabel)
    }


    override func updateViewConstraints() {
        if (!didSetupConstraints) {
            timerButton.snp.makeConstraints { (make) in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(5.0)
                make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).inset(25.0)
                make.width.height.equalTo(25.0)
            }

            settingButton.snp.makeConstraints { (make) in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(5.0)
                make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).inset(25.0)
                make.width.height.equalTo(25.0)
            }

            themeButton.snp.makeConstraints { (make) in
                make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(5.0)
                make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).inset(25.0)
                make.width.height.equalTo(25.0)
            }

            notiButton.snp.makeConstraints { (make) in
                make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(5.0)
                make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).inset(25.0)
                make.width.height.equalTo(25.0)
            }

            notiStatusLabel.snp.makeConstraints { (make) in
                make.centerY.equalTo(notiButton)
                make.leading.equalTo(notiButton.snp.trailing).offset(10.0)
            }

            didSetupConstraints = true
        }
        super.updateViewConstraints()
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

extension HomeViewController {

    @IBAction func timerButtonClick(_ sender: Any) {

    }

    @IBAction func settingButtonClick(_ sender: Any) {
        print("Setting Button")
    }

    @IBAction func themeButtonClick(_ sender: Any) {

    }
    @IBAction func notiButtonClick(_ sender: Any) {

    }
}
