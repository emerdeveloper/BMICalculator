//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Emerson Javid Gonzalez Morales on 7/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelHeight.text = String.init(format: "%.2f%@", sliderHeight.value, "m")
        labelWeight.text = String.init(format: "%.0f%@", sliderWeight.value, "kg")
    }

    @IBAction func heightSliderMoved(_ sender: UISlider) {
        labelHeight.text = String.init(format: "%.2f%@", sender.value, "m")
    }
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        labelWeight.text = String.init(format: "%.0f%@", sender.value, "kg")
    }
    
    @IBAction func calulatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: sliderHeight.value, weight: sliderWeight.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let vc = segue.destination as! ResultViewController
            vc.bmiValue = calculatorBrain.getBMIValue()
            vc.advice = calculatorBrain.getBMIAdvice()
            vc.color = calculatorBrain.getBMIColor()
        }
    }
}

