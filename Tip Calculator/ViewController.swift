//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Irais Gopar osorio on 1/23/19.
//  Copyright © 2019 Irais Gopar osorio. All rights reserved.
//

import UIKit

class ViewController:UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTouch(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func tipUpdate(_ sender: Any) {
        calculateTip(Any.self)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //get bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculate tip and total
        let tipPercent = [0.15,0.18,0.2]
        
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip and total label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
}

