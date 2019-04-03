//
//  ViewController.swift
//  GuardStatement
//
//  Created by GIT p501 on 4/3/19.
//  Copyright © 2019 GIT p501. All rights reserved.
//

import UIKit

public enum Gender: String {
    case F = "Female"
    case M = "Male"
    case LGBT = "LGBT"
    case FF = "FF"
}

enum MobileBranch {
    case Apple
    case Samsung
    case Nokia
    case LG
    case LGBT
}

class ViewController: UIViewController {
    
    var soutMobileBranch: MobileBranch!

    override func viewDidLoad() {
        super.viewDidLoad()
        //execute()
        switchStatementExample()
        soutMobileBranch = MobileBranch.LGBT
    }
    
    func execute() {
        let name: String? = "ios-D005"
        guard let _name = name else {
            print("Khong co gia tri")
            return
        }
        print(_name)
        print("Co gia tri")
        let so: Int = 0
        let _type = type(of: so.self)
        print(_type)
    }

    func switchStatementExample() {
        let weekDay: Int = 8
        switch weekDay {
        case 2:
            print("Thu 2")
        case 3:
            print("Thu 3")
        case 4:
            print("Thu 4")
        case 5:
            print("Thu 2")
        case 6:
            print("Thu 3")
        case 7:
            print("Thu 4")
        default:
            break
        }
        
        var gender: Gender = .M
        switch gender {
        case .M:
            print(gender.rawValue)
        case .F:
            print("Female")
        case .LGBT:
            print("LGBT")
        default:
            print("FF")
        }
        
        if gender == .M {
            print("Male")
        } else if gender == .F {
            print("Female")
        } else if gender == .LGBT {
            print("LGBT")
        } else {
            print("FF")
        }
        "Wed 03-04-2019"
    }
    
}

