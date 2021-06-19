//
//  Bmi.swift
//  BMICalc
//
//  Created by Ilya Zhdaney on 19.06.2021.
//

import Foundation

class Bmi{
    struct Item {
        var isCalc:Bool = false

        }
    
    private var _age:Int
    private var _height:Double
    private var _weight:Double
    private var _bmi:Double = 0.00
    private var isVerify:Bool = false
    var bmiResult:String = ""
    var bmiResultText:String = ""
    var Color:Int = 0
    
    
    init(age:Int, height:Double, weight:Double){
        _age = age
        _height = height
        _weight = weight
        CaclulateBmi()
    }
    
    private func CaclulateBmi(){
        
        VerifyValue()

        if isVerify && _age > 18{
            let heightMeter:Double = _height / 100
            _bmi = _weight / (heightMeter * heightMeter)
            _bmi = (_bmi * 100).rounded() / 100
            
            }
            else{
            _bmi = 0.00
        }
        
        ChangeColorAndText()
        bmiResult = String(_bmi)
        }
    
    private func ChangeColorAndText(){
        if isVerify && _age <= 18{
            bmiResultText = "You must be over 18 years old."
            Color = 0
            
        }
        else if(isVerify && _age > 18){
            
            if _bmi  <= 18{
                bmiResultText = "Underweight"
                Color = 1
            }
            else if (_bmi > 18 && _bmi < 25){
                bmiResultText = "Normal"
                Color = 2
            }
            else{
                bmiResultText = "Overweight"
                Color = 0
            }
        }
        else{
            bmiResultText = "Please try again"
            Color = 0
        }
    }
    
    private func VerifyValue(){
        if _age != 0 && _weight != 0 && _height != 0{
         isVerify = true
        }
        else{
            isVerify = false
        }
    }
    
}
    
