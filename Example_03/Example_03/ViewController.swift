//
//  ViewController.swift
//  Example_03
//
//  Created by GIT p501 on 4/10/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let number = Int(inputTextField.text!)
        if (number != nil) {
            let hour = number! / 3600
            let temp = number! % 3600
            let minute = temp / 60
            let second = temp % 60
            
            print("Hour: \(hour)")
            print("Minute: \(minute)")
            print("Second: \(second)")
            
        }
    }
}

// cho mot so n tinh S(n) = 1 + 1*2 + 1*2*3 + 1*2*3*4 + 1*2*3*...*n (ung dung cho cau lenh while)

// cho mot so n cho biet uoc so le lon nhat cua n
// 10 chia het 10 5 2 1 => kq 5
// 100 chia het cho: 100 50 25 20 10 5 2 1 => 25 (ung dung phep chia lay phan du %)
