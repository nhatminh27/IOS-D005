//
//  ViewController.swift
//  SnapKit_Demo
//
//  Created by GIT p501 on 4/26/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var redView: UIView!
    let box = UIView()
    var didUpdateConstraints = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView = UIView()
        redView.backgroundColor = UIColor.red
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)

        view.setNeedsUpdateConstraints()
    }

    override func updateViewConstraints() {
        if !didUpdateConstraints {
            redView.snp.makeConstraints { (make) in
                make.width.height.equalTo(100.0)
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
                make.centerX.equalTo(view)
            }
            
            didUpdateConstraints = true
        }
        super.updateViewConstraints()
    }

}

