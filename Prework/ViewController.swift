//
//  ViewController.swift
//  Prework
//
//  Created by Muhammad Hamza Niaz on 6/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        self.title = "Tip Calculator"
        self.billAmountTextField.becomeFirstResponder()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = bill + tip
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        //let formattedTotal = formatter.
        tipAmountLabel.text = formatter.string(from: NSNumber(value: tip))
        tipAmountLabel.textAlignment = NSTextAlignment.left
        tipAmountLabel.sizeToFit()
        totalLabel.text = formatter.string(from: NSNumber(value: total))
        totalLabel.textAlignment = NSTextAlignment.left
        totalLabel.sizeToFit()
    }
    
}

