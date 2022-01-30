//
//  SettingsViewController.swift
//  PREWORK
//
//  Created by Emarah Charles on 1/29/22.
//

import UIKit

class SettingsViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayCurrent.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayCurrent[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.PickerLabel.text = arrayCurrent[row]
    }
    
    var arrayCurrent = [String]()
    
    @IBOutlet weak var DarkModeSwitch: UISwitch!
    
    @IBOutlet weak var CurrencyPicker: UIPickerView!
    
    @IBOutlet weak var PickerLabel: UILabel!
    
    
//    let defaults = UserDefaults.standard
//    //let darkModeSwitchInfo = "darkModeSwitchInfo"
//    var darkModeSwitchInfo = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pink = UIColor (red: 0.9686, green: 0.8902, blue: 0.9255, alpha: 1)
        view.backgroundColor = pink        // Do any additional setup after loading the view.
        
        // Connect data:
            
              
            self.CurrencyPicker.dataSource = self
            self.CurrencyPicker.delegate = self
              
        
              // Input the data into the array
             arrayCurrent = ["US - USD", "European - EUR", "Japanese - JPY", "British - GBP"]
    }
    
    @IBAction func CurrentChange(_ sender: UIPickerView, didSelectRow row: Int){
        let defaults = UserDefaults.standard
        defaults.set(row, forKey: "CurrencyPicked")
        defaults.synchronize()
        
        }
    
    
    @IBAction func DMode(_ sender: UISwitch) {
        let defaults = UserDefaults.standard
        
        //set
        defaults.set(DarkModeSwitch.isOn, forKey : "darkModeSwitchInfo")
        
        //call
        let DarkModeSwitchIsOn = defaults.bool(forKey: "darkModeSwitchInfo")
        DarkModeSwitch.isOn = DarkModeSwitchIsOn
             
        if DarkModeSwitchIsOn == true {
            view.backgroundColor = .systemPink
            //overrideUserInterfaceStyle = .dark
            
    }
        if DarkModeSwitchIsOn == false{
            let pink = UIColor (red: 0.9686, green: 0.8902, blue: 0.9255, alpha: 1)
            view.backgroundColor = pink
            
        }
        defaults.synchronize()
        
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
