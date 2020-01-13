//
//  ViewController.swift
//  local
//
//  Created by Karla on 1/12/20.
//  Copyright © 2020 Karla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipTotal: UILabel!
    
    @IBOutlet weak var totalTotal: UILabel!
    
    @IBOutlet weak var sliderP: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        print(sliderP.selectedSegmentIndex);
        let tip = bill * tipPercentages[sliderP.selectedSegmentIndex]
        let total = bill + tip
        
        tipTotal.text = String(format: "$%.2f", tip)
        totalTotal.text = String(format: "$%.2f", total)
    }
}

