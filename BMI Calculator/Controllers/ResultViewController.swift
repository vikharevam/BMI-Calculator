//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Александр Вихарев on 07.03.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var resultBmi: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultBmi.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
        
        
    }
    
    
    @IBAction func resetPresset(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    
    
}
