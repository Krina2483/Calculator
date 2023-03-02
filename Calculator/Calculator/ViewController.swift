//
//  ViewController.swift
//  Calculator
//
//  Created by Krina Bhalodiya on 11/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var num1:Double = Double()
    var num2:Double = Double()
    var sign:String = String()
    @IBAction func btn0(_ sender: Any) {
        text.text = String(text.text!) + "0"
    }
    
    @IBAction func btn00(_ sender: Any) {
        text.text = String(text.text!) + "00"
    }

    @IBAction func btnpoint(_ sender: Any) {
        text.text = String(text.text!) + "."
    }
    
    @IBAction func btn1(_ sender: Any) {
        text.text = String(text.text!) + "1"
    }
    
    @IBAction func btn2(_ sender: Any) {
        text.text = String(text.text!) + "2"
    }
    
    @IBAction func btn3(_ sender: Any) {
        text.text = String(text.text!) + "3"
    }
    
    @IBAction func btn4(_ sender: Any) {
        text.text = String(text.text!) + "4"
    }
    
    @IBAction func btn5(_ sender: Any) {
        text.text = String(text.text!) + "5"
    }
    
    @IBAction func btn6(_ sender: Any) {
        text.text = String(text.text!) + "6"
    }
    
    @IBAction func btn7(_ sender: Any) {
        text.text = String(text.text!) + "7"
    }
    
    @IBAction func btn8(_ sender: Any) {
        text.text = String(text.text!) + "8"
    }
    
    @IBAction func btn9(_ sender: Any) {
        text.text = String(text.text!) + "9"
    }
    
    @IBAction func btnclear(_ sender: Any) {
        text.text = ""
    }
    
    @IBAction func btnper(_ sender: Any) {
        sign = "%"
        num1 = Double(text.text ?? "0" ) ?? 0
        text.text = ""
    }
    
    @IBAction func btnback(_ sender: Any) {
        if text.text != "" {
            text.text?.removeLast();
        }
    }
    
    @IBAction func btndivide(_ sender: Any) {
        sign = "/"
        num1 = Double(text.text ?? "0" ) ?? 0
        text.text = ""
    }
    
    @IBAction func btnmultiply(_ sender: Any) {
        sign = "*"
        num1 = Double(text.text ?? "0" ) ?? 0
        text.text = ""
    }
    
    @IBAction func btnsubtraction(_ sender: Any) {
        sign = "-"
        num1 = Double(text.text ?? "0" ) ?? 0
        text.text = ""
    }
    
    @IBAction func btnaddition(_ sender: Any) {
        sign = "+"
        num1 = Double(text.text ?? "0" ) ?? 0
        text.text = ""
    }
    
    @IBAction func btnans(_ sender: Any) {
        num2 = Double(text.text ?? "0" ) ?? 0
        if sign == "%" {
            text.text = String(num1 * 100 / num2)
        }
        else if sign == "+" {
            text.text = String(num1 + num2)
        }
        else if sign == "-" {
            text.text = String(num1 - num2)
        }
        else if sign == "*" {
            text.text = String(num1 * num2)
        }
        else if sign == "/" {
            text.text = String(num1/num2)
        }
    }
}
