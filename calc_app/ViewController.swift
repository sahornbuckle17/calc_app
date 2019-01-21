//
//  ViewController.swift
//  calc_app
//
//  Created by Sia on 1/19/19.
//  Copyright © 2019 Sia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BillFeild: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello love")
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount
        let bill = Double(BillFeild.text!) ?? 0
        
        // calcuate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill+tip
        
        // upadate tip and taotl labels
        tipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
        
    }
}

