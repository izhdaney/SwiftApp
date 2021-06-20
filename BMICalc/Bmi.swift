//
//  Bmi.swift
//  BMICalc
//
//  Created by Ilya Zhdaney on 19.06.2021.
//

import Foundation

class Bmi{
    
    private var _age:Int
    private var _height:Double
    private var _weight:Double
    private var _bmi:Double
    var isVerify:Bool = false
    var bmiResult:String = ""
    var bmiResultText:String = ""
    var color:Int = 0
    
    
    init(age:Int, height:Double, weight:Double){
        _age = age
        _height = height
        _weight = weight
        _bmi = 0.00
    }
    
    public func CaclulateBmi(){
        

        if isVerify && _age > 18{
            
            let heightMeter:Double = _height / 100
            _bmi = _weight / (heightMeter * heightMeter)
            _bmi = (_bmi * 100).rounded() / 100
            
            }
            else{
            _bmi = 0.00
        }
        
        bmiResult = String(_bmi)
        }
    
    public func ChangeColorAndText(){
        if isVerify && _age <= 18{
            bmiResultText = "You must be over 18 years old."
            color = 0
            
        }
        else if(isVerify && _age > 18){
            
            if _bmi  <= 18{
                bmiResultText = "Underweight"
                color = 1
            }
            else if (_bmi > 18 && _bmi < 25){
                bmiResultText = "Normal"
                color = 2
            }
            else{
                bmiResultText = "Overweight"
                color = 0
            }
        }
        else{
            bmiResultText = "Please try again"
            color = 0
        }
    }
    
    public func VerifyValue(){
        if _age > 0 && _weight > 0 && _height > 0{
         isVerify = true
        }
        else{
            isVerify = false
        }
    }
    
}
    
