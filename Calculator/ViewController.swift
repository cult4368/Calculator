//
//  ViewController.swift
//  Calculator
//
//  Created by Hong, Sang Ho (홍상호) on 2018. 1. 11..
//  Copyright © 2018년 Hong, Sang Ho (홍상호). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var modTextField: UITextField!
    @IBOutlet weak var sumTextField: UILabel!
    
    @IBAction func initBtnAction(_ sender: Any) {
        //초기화
        modTextField.text = ""
        sumTextField.text = "0"
        
        _ = alertAction(title: "", msg: "CLEAR")
    }
    @IBAction func backBtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "Back")
        let modStr = modTextField.text!
        if modStr.count > 0 {
            modTextField.text = modStr.substring(to : modStr.index(modStr.endIndex, offsetBy:-1))
        }
        else
        {
            modTextField.text = ""
        }
        
    }
    @IBAction func totalBtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "SUM")
        let sum: String = String(describing: modTextField.text) + String("=")
        modTextField.text = sum
    }
    @IBAction func divideBtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "DIVIDE")
        let divide: String = String(describing: modTextField.text) + String("%")
        modTextField.text = divide
    }
    @IBAction func byBtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "MULTIPLE")
        let multi: String = String(describing: modTextField.text) + String("X")
        modTextField.text = multi
    }
    @IBAction func minusBtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "MINUS")
        let minus: String = String(describing: modTextField.text) + String("-")
        modTextField.text = minus
    }
    @IBAction func addBtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "ADD")
        let add: String = String(describing: modTextField.text) + String("+")
        modTextField.text = add
    }
    
    @IBAction func num1BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "1")
        let one: String = String(describing: modTextField.text) + String("1")
        modTextField.text = one
    }
    @IBAction func num2BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "2")
        let two: String = String(describing: modTextField.text) + String("2")
        modTextField.text = two
    }
    @IBAction func num3BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "3")
        let three: String = String(describing: modTextField.text) + String("3")
        modTextField.text = three
    }
    @IBAction func num4BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "4")
        let four: String = String(describing: modTextField.text) + String("4")
        modTextField.text = four
    }
    @IBAction func num5BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "5")
        let five: String = String(describing: modTextField.text) + String("5")
        modTextField.text = five
    }
    @IBAction func num6BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "6")
        let six: String = String(describing: modTextField.text) + String("6")
        modTextField.text = six
    }
    @IBAction func num7BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "7")
        let seven: String = String(describing: modTextField.text) + String("7")
        modTextField.text = seven
    }
    @IBAction func num8BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "8")
        let eight: String = String(describing: modTextField.text) + String("8")
        modTextField.text = eight
    }
    @IBAction func num9BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "9")
        let nine: String = String(describing: modTextField.text) + String("9")
        modTextField.text = nine
    }
    @IBAction func num0BtnAction(_ sender: Any) {
        //_ = alertAction(title: "", msg: "0")
        let zero: String = String(describing: modTextField.text) + String("0")
        modTextField.text = zero
    }
    
    
    func alertAction(title: String, msg: String){
        let alertDialog = UIAlertController(title: title, message: msg, preferredStyle: UIAlertControllerStyle.alert)
        //UIAlertControllerStyle.actionSheet 는 화면 하단에 표시함
        
        alertDialog.addAction(UIAlertAction(title:"OK", style: .default, handler: {(action: UIAlertAction!) in
            //Action
            print("버튼 텍스트 확인")
        }))
        present(alertDialog, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

