//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Александр Вихарев on 07.03.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    
    
    @IBOutlet weak var resultBmi: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultBmi.text = bmiValue
       
        
        
        
    }
    

    @IBAction func resetPresset(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
