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
        self.title = "Tip Calculator"
       

        billAmountTextField.becomeFirstResponder()   //keyboard appears auto
        billAmountTextField.keyboardType = .decimalPad //Keyboard is always numberpad
        
        let pink = UIColor (red: 0.9686, green: 0.8902, blue: 0.9255, alpha: 1)
        view.backgroundColor = pink
    
        
    }
    
    //From cdoepath
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let defaults = UserDefaults.standard
        let darkModeSwitchInfo = defaults.bool(forKey: "darkModeSwitchInfo")

       if darkModeSwitchInfo == true {
              view.backgroundColor = .systemPink
          }
        if darkModeSwitchInfo == false{
            let pink = UIColor (red: 0.9686, green: 0.8902, blue: 0.9255, alpha: 1)
            view.backgroundColor = pink
        }
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
       // if{
            
        //}
        defaults.synchronize()
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

