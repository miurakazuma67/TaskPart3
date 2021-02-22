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
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    @IBOutlet private weak var totalButton: UIButton!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func switch1Changed(_ sender: UISwitch) {
        let num1 = Double(textField1.text ?? "" ) ?? 0
        if sender.isOn {
            //Onの時、符号を反転させる
            self.label1.text = String(num1 * -1)
        } else {
            //Offの時、符号はそのまま
            self.label1.text = String(num1)
        }
    }
    @IBAction func switch2Changed(_ sender: UISwitch) {
        let num2 = Double(textField2.text ?? "" ) ?? 0
        if sender.isOn {
            //Onの時、符号を反転させる
            self.label2.text = String(num2 * -1)
        } else {
            //Offの時、符号はそのまま
            self.label2.text = String(num2)
        }
    }
    @IBAction func buttonTapped(_ sender: Any) {
        let fig1 = Double(self.label1.text ?? "" ) ?? 0
        let fig2 = Double(self.label2.text ?? "" ) ?? 0
        let total = Double(fig1 + fig2)
        self.totalLabel.text = String(total)
    }
}

