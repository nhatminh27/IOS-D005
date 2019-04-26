//
//  ViewController.swift
//  Day15
//
//  Created by GIT p501 on 4/26/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var greyView: UIView!
    var redView: UIView!
    var yellowView: UIView!
    var blueView: UIView!
    var didSetupConstraints = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpRedView()
        setUpYellowView()
        setUpBlueView()
        setupGreyView()
        view.setNeedsUpdateConstraints()
    }
    
    func setUpRedView() {
        redView = UIView()
        redView.backgroundColor = UIColor.red
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
    }

    func setUpYellowView() {
        yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellow
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yellowView)
    }
    
    func setUpBlueView() {
        blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
    }
    
    func setupGreyView() {
        greyView = UIView()
        greyView.backgroundColor = UIColor.gray
        greyView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greyView)
    }
    
    override func updateViewConstraints() {
        if !didSetupConstraints {
            let redViewConstraints = [
                NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100.0),
                NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 100.0),
                NSLayoutConstraint(item: redView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: redView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
            ]
            NSLayoutConstraint.activate(redViewConstraints)
            
            let yellowViewConstraints = [
                NSLayoutConstraint(item: yellowView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 100),
                NSLayoutConstraint(item: yellowView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 100),
                NSLayoutConstraint(item: yellowView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: yellowView, attribute: .top, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0)
            ]
            NSLayoutConstraint.activate(yellowViewConstraints)
            
            let blueViewConstraints = [
                NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100.0),
                NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 100.0),
                NSLayoutConstraint(item: blueView, attribute: .bottom, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: blueView, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 0.0)
            ]
            NSLayoutConstraint.activate(blueViewConstraints)
            
            let greyViewConstraints = [
                NSLayoutConstraint(item: greyView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 100),
                NSLayoutConstraint(item: greyView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/2, constant: 0),
                NSLayoutConstraint(item: greyView, attribute: .bottom, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: 0),
                NSLayoutConstraint(item: greyView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0)
            ]
            NSLayoutConstraint.activate(greyViewConstraints)
            
            didSetupConstraints = true
        }
        super.updateViewConstraints()
    }

}

