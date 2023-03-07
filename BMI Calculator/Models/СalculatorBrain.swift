//
//  СalculatorBrain.swift
//  BMI Calculator
//
//  Created by Александр Вихарев on 07.03.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getValue() -> String {
        let bmiTolDecimalPlace = String(format: "%.1f", bmi?.bmiValue ?? 0.0)
        return bmiTolDecimalPlace
    }
    
    
    mutating func calculatorBMI(weight: Float, height: Float){
        
        let bmiValue = weight/(height*height)
//        bmi = BMI(bmivalue: <#T##Float#>, advice: <#T##String#>, color: <#T##UIColor#>)
//
        
        if bmiValue < 18.5 {
            bmi = BMI(bmiValue: bmiValue, advice: "Нужно кушать больше пирогов", color: UIColor.yellow)
        } else if bmiValue < 24.9 {
            bmi = BMI(bmiValue: bmiValue, advice: "Все прекрасно, но спорт лишним не будет", color: UIColor.green)
        } else {
            bmi = BMI(bmiValue: bmiValue, advice: "Ежкдневные тренировки и правильное питание", color: UIColor.red)
        }
    }

    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    
    }
}
