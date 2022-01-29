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
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func DMode(_ sender: UISwitch) {
        if sender.isOn{
            overrideUserInterfaceStyle = .dark
            
        }
        else{
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
