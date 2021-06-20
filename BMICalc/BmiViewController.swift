//
//  BmiViewController.swift
//  BMICalc
//
//  Created by Ilya Zhdaney on 19.06.2021.
//

import UIKit

class BmiViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ageValue: UITextField!
    @IBOutlet weak var heightValue: UITextField!
    @IBOutlet weak var weightValue: UITextField!
    @IBOutlet weak var bmiResultText: UILabel!
    @IBOutlet weak var bmiResultValue: UILabel!
    
    private var _age:Int = 0
    private var _height:Double = 0.00
    private var _weight:Double = 0.00
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func pressCalcBtn(_ sender: UIButton) {
        setupValue()
        let bmi = Bmi(age: _age, height: _height, weight: _weight)
        bmi.VerifyValue()
        bmi.CaclulateBmi()
        bmi.ChangeColorAndText()
        
        bmiResultValue.text = bmi.bmiResult
        bmiResultText.text = bmi.bmiResultText
        
        if bmi.color == 0{
            bmiResultText.textColor = .red
        }
        else if (bmi.color == 1){
            bmiResultText.textColor = .orange
        }
        else{
            bmiResultText.textColor = .green
        }
        
        bmiResultText.isHidden = false
        
    }
    
    private func setupValue(){
        _age = Int(ageValue.text!) ?? 0
        _height = Double(heightValue.text!) ?? 0
        _weight = Double(weightValue.text!) ?? 0
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.view.endEditing(true)
    }
    
}
