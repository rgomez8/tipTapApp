//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Robert Gomez on 4/14/18.
//  Copyright © 2018 Robert Gomez. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    // Remove the navigation for the main view
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var percentageSlider: UISlider!


    //    let toolbar = UIToolbar()
    //    toolbar.sizeToFit()
    //
    //    let doneButton = UIBarButtonItem(title: "done",
    //    style: .done, target: self, action:
    //        #selector(self.doneAction))
    //    toolbar.items = [doneButton]
    //    sumTextField.inputAccessoryView = toolbar
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sliderValueDidChange(_ sender: Any) {
        calculateTip()
        
    }
    
    func calculateTip(){
        let percentage = Int(percentageSlider.value)
        
        tipPercentageLabel.text = ("\(percentage)%")
        
        if let sum = Double(billAmountTextField.text!){
            
            let tip = ((Double(percentage)*sum)/100)
            let roundedTip = String.localizedStringWithFormat("%.2f", tip)
            tipAmountLabel.text = "$\(roundedTip)"
            
            let total = sum + tip
            let roundedTotal = String.localizedStringWithFormat("%.2f", total)
            billTotalLabel.text = "$\(roundedTotal)"
            
            
            
        }else{
            
        }
    }
    
}

