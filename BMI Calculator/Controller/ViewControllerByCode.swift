//
//  ViewControllerByCode.swift
//  BMI Calculator
//
//  Created by Emerson Javid Gonzalez Morales on 7/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit

class ViewControllerByCode: UIViewController {
    
    var bmi = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Hello from another View controller \n \(bmi)"
        label.font = UIFont(name: "Bold", size: 25)
        label.frame = CGRect.init(x: 0, y: 0, width: 400, height: 25)
        view.backgroundColor = UIColor.green
        view.addSubview(label)
    }
}
