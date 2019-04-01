//
//  ViewController.swift
//  Example_01
//
//  Created by GIT p501 on 4/1/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var inputTextField2: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionButtonTapped(_ sender: Any) {
        let inputText: String? = inputTextField.text
        if inputText != nil && inputText!.count > 0 {
            print(inputText!.count)
            textLabel.text = "Gia tri ban nhap vao la: \(inputText!)"
            inputTextField.text = nil
        } else {
            textLabel.text = "Khong nhap gi ca"
        }
    }
    
    @IBAction func sumButtonTapped(_ sender: Any) {
        let firstNum = Double(inputTextField.text!)
        let secondNum = Double(inputTextField2.text!)
        
        if firstNum == nil && secondNum == nil {
            textLabel.text = "Ban nhap sai ca hai so"
            return
        }
        
        if firstNum == nil {
            textLabel.text = "Ban nhap vao so thu nhat: \(inputTextField.text!) - Sai roi"
            return
        }
        
        if secondNum == nil {
            textLabel.text = "Ban nhap vao so thu hai: \(inputTextField2.text!) - Sai roi"
            return
        }
        
        if firstNum != nil && secondNum != nil {
            let sum = firstNum! + secondNum!
            textLabel.text = "Ket qua la: \(sum)"
        } else {
            print("Co mot so bang nil")
        }

    }

}

