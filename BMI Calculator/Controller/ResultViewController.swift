//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Emerson Javid Gonzalez Morales on 7/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var labelBMI: UILabel!
    @IBOutlet weak var labelAdvice: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelBMI.text = bmiValue
        labelAdvice.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
