//
//  SettingsViewController.swift
//  PREWORK
//
//  Created by Emarah Charles on 1/29/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var DarkModeSwitch: UISwitch!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pink = UIColor (red: 0.9686, green: 0.8902, blue: 0.9255, alpha: 1)
        view.backgroundColor = pink        // Do any additional setup after loading the view.
    }
    
    @IBAction func DMode(_ sender: UISwitch) {
        if DarkModeSwitch.isOn == true {
            view.backgroundColor = .systemPink
            //overrideUserInterfaceStyle = .dark
            
    }
        else{
            let pink = UIColor (red: 0.9686, green: 0.8902, blue: 0.9255, alpha: 1)
            view.backgroundColor = pink
            
        }
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
