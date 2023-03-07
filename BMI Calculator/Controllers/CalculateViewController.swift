//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Александр Вихарев on 13.02.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func userSelectHeight(_ sender: UISlider) {
        heightLabel.text = " \(String(format: "%.2f", sender.value)) м"
        
    }
    
    
    @IBAction func userSelectWeight(_ sender: UISlider) {
        weightLabel.text = " \(String(format: "%.1f", sender.value)) кг"
        
    }
    
    
    @IBAction func calculatePassedButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight/(height*height)
        print(bmi)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
            
        }
    }
}
