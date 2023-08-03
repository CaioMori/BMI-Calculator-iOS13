//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Caio Hideki Martins Alves Mori on 03/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    private var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/pow(height, 2)
        bmi = BMI(bmiValue)
    }
    
    func getBMI() -> BMI?{
        return bmi
    }
}
