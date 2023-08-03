//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fKg", weightSlider.value)
        heightLabel.text = String(format: "%.2fm", heightSlider.value)
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calculatorBrain.getBMI()
        }
    }
}

