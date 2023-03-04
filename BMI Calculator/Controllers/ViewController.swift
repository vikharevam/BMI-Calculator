//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Александр Вихарев on 13.02.2023.
//

import UIKit

class ViewController: UIViewController {

   
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
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        self.present(secondVC, animated: true)
    }
    
    
    
    
}
