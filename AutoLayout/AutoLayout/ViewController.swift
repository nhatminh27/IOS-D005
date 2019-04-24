//
//  ViewController.swift
//  AutoLayout
//
//  Created by GIT p501 on 4/19/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fbIconImageView: UIImageView!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var inputContainerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        fbIconImageView.layer.cornerRadius = 4.0
        fbIconImageView.clipsToBounds = true
        
        createButton.layer.cornerRadius = 4.0
        createButton.layer.borderWidth = 1.0
        let borderColor = UIColor(red: 87.0/225.0, green: 127.0/225.0, blue: 188.0/225.0, alpha: 1.0)
        createButton.layer.borderColor = borderColor.cgColor
        
        logInButton.layer.cornerRadius = 4.0
        
        inputContainerView.layer.cornerRadius = 4.0
        inputContainerView.layer.borderWidth = 1.0
        let containerBorderColor = UIColor.init(red: 214.0/255.0, green: 214.0/255.0, blue: 214.0/255.0, alpha: 1.0)
        inputContainerView.layer.borderColor = containerBorderColor.cgColor
    }


}

