//
//  ViewController.swift
//  Task3
//
//  Created by 三浦　一真 on 2021/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var mySwitch1: UISwitch!
    @IBOutlet private weak var mySwitch2: UISwitch!
    @IBOutlet private weak var totalButton: UIButton!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var totalLabel: UILabel!

    @IBAction func buttonTapped(_ sender: Any) {
        let num1 = Double(textField1.text ?? "" ) ?? 0
        let num2 = Double(textField2.text ?? "" ) ?? 0

        let signedNum1: Double
        if mySwitch1.isOn{
            signedNum1 = num1 * -1
        } else {
            signedNum1 = num1
        }
        label1.text = String(signedNum1)

        let signedNum2: Double
        if mySwitch2.isOn{
            signedNum2 = num2 * -1
        } else {
            signedNum2 = num2
        }
        label2.text = String(signedNum2)

        let total = signedNum1 + signedNum2
        self.totalLabel.text = String(total)
    }
}
