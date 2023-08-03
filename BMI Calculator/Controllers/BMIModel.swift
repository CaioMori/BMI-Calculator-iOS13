//
//  BMIModel.swift
//  BMI Calculator
//
//  Created by Caio Hideki Martins Alves Mori on 03/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    private let advice: String
    private let text: String
    private let color: UIColor
    
    init(_ value: Float) {
        self.value = value
        
        self.text = String(format: "%.1f", value)
        
        switch value {
        case ..<18.5:
            self.advice = "Abaixo do peso"
            self.color = .blue
        case 18.5..<24.9:
            self.advice = "Peso normal"
            self.color = .green
        case 24.9..<29.9:
            self.advice = "Sobrepeso"
            self.color = .yellow
        default:
            self.advice = "Obesidade"
            self.color = .red
        }
    }
    
    func getTextValue() -> String{
        return self.text
    }
    
    func getAdviceLabelText() -> String {
        return self.advice
    }
    
    func getColor() -> UIColor {
        return self.color
    }
}
