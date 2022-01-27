//
//  ViewController.swift
//  PREWORK
//
//  Created by Emarah Charles on 1/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()   //keyboard appears auto
        billAmountTextField.keyboardType = .decimalPad //Keyboard is always numberpad
    
        billAmountTextField.layer.cornerRadius = 15.0
        
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
   
        //Get bill from input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get tip
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        
        //Changing tip and total amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        
        totalLabel.text = String(format: "%.2f", total)


    }
    

}

