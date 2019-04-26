//
//  ViewController.swift
//  AutoLayout_Programmaticaly
//
//  Created by GIT p501 on 4/26/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let square = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        square.backgroundColor = UIColor.red
        square.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(square)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: square, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 64),
            NSLayoutConstraint(item: square, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 64),
            NSLayoutConstraint(item: square, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: square, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0)
            ])
    }


}

