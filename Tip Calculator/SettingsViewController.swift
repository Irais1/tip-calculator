//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Irais Gopar osorio on 1/27/19.
//  Copyright © 2019 Irais Gopar osorio. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var defaultTipController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTipChanged(_ sender: Any) {
        let tipPercents = [0.15,0.18,0.2]
        let defaultTip = UserDefaults.standard
        let tip = tipPercents[defaultTipController.selectedSegmentIndex]
        defaultTip.set(tip, forKey: "defaultTip")
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
