//
//  ViewController.swift
//  tipTapApp
//
//  Created by Robert Gomez on 4/24/18.
//  Copyright © 2018 Robert Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sumTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var percentOfSumLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentageSlider: UISlider!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sumTextField.layer.cornerRadius = 15
        self.totalLabel.layer.cornerRadius = 15
        self.percentOfSumLabel.layer.cornerRadius = 15
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderValueDidChange(_ sender: Any) {
        calculateTip()
        
    }
    
    func calculateTip(){
        let percentage = Int(percentageSlider.value)
        
        tipPercentageLabel.text = ("Tip \(percentage) %")
        
        if let sum = Double(sumTextField.text!){
            
            let tip = ((Double(percentage)*sum)/100)
            percentOfSumLabel.text = "$\(tip)"
            
            let total = sum + tip
            
            totalLabel.text = "$\(total)"
            
            
        }else{
            
        }
    }
    
}
