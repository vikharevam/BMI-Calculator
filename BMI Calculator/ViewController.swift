//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Александр Вихарев on 13.02.2023.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightValue: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


   
    
    @IBAction func userSelectHeight(_ sender: UISlider) {
        heightValue.text = " \(String(format: "%.2f", sender.value)) м"
        
    }
    
    
    @IBAction func userSelectWeight(_ sender: UISlider) {
        weightValue.text = " \(String(format: "%.1f", sender.value)) кг"
 
    }
}
