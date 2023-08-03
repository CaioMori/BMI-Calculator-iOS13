//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Caio Hideki Martins Alves Mori on 02/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmi: BMI?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultBackground: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmi?.getTextValue()
        
        adviceLabel.text = bmi?.getAdviceLabelText()
        
        resultBackground.backgroundColor = bmi?.getColor()
    }
    
    @IBAction func recalculatePress(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
