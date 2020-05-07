//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Emerson Javid Gonzalez Morales on 7/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight/pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: String.init(format: "%.1f", bmiValue), advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9{
            bmi = BMI(value: String.init(format: "%.1f", bmiValue), advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: String.init(format: "%.1f", bmiValue), advice: "Eat fewer pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return bmi?.value ?? "0.0"
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2, green: 0.4823529412, blue: 0.7725490196, alpha: 1)
    }
}
