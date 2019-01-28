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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        
        let defaultTip = UserDefaults.standard;
        defaultTipController.selectedSegmentIndex = defaultTip.integer(forKey: "defaultTip")
        defaultTipPercentage(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTipPercentage(_ sender: Any) {
        //change default tip value
        let tipPercents = [0,1,2]
        let tip = tipPercents[defaultTipController.selectedSegmentIndex]
        let defaultTip = UserDefaults.standard
        defaultTip.set(tip, forKey: "defaultTip")
        defaultTip.synchronize()
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
