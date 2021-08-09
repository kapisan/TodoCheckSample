//
//  ViewController.swift
//  ProtocolPractice
//
//  Created by niwa  shuhei on 2021/08/09.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var button1: UIButton!
    @IBOutlet private weak var button2: UIButton!

    let okImage = UIImage(named: "ok")
    let ngImage = UIImage(named: "ng")

    var switch_flag1: Bool = false
    var switch_flag2: Bool = false

    func memorize1(setValue: String) {
        UserDefaults.standard.set(setValue, forKey: "textFieldKey1")
    }

    func memorize2(setValue: String) {
        UserDefaults.standard.set(setValue, forKey: "textFieldKey2")
    }

    func loadMemorize1() {
        let textFieldValue = UserDefaults.standard.string(forKey: "textFieldKey1")
        textField1.text = textFieldValue
    }

    func loadMemorize2() {
        let textFieldValue = UserDefaults.standard.string(forKey: "textFieldKey2")
        textField2.text = textFieldValue
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        button1.setImage(ngImage, for: .normal)
        button2.setImage(ngImage, for: .normal)
        self.textField1.delegate = self
        self.textField2.delegate = self

        loadMemorize1()
        loadMemorize2()
    }

    @IBAction func buttonAction1(_ sender: UIButton) {

        if(switch_flag1 == false) {
            switch_flag1 = true
            button1.setImage(okImage, for: .normal)
        } else {
            switch_flag1 = false
            button1.setImage(ngImage, for: .normal)
        }
    }

    @IBAction func buttonAction2(_ sender: UIButton) {

        if(switch_flag2 == false) {
            switch_flag2 = true
            button2.setImage(okImage, for: .normal)
        } else {
            switch_flag2 = false
            button2.setImage(ngImage, for: .normal)
        }
    }

    @IBAction func clearButtonAction(_ sender: UIButton) {
        if(switch_flag1 == false) {
            print("switch_flag1:変更なし")
        } else {
            switch_flag1 = false
            button1.setImage(ngImage, for: .normal)
        }

        if(switch_flag2 == false) {
            print("switch_flag2:変更なし")
        } else {
            switch_flag2 = false
            button2.setImage(ngImage, for: .normal)
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        guard let setValue1 = textField1.text else { return false }
        memorize1(setValue: setValue1)

        guard let setValue2 = textField2.text else { return false }
        memorize2(setValue: setValue2)

        textField.resignFirstResponder()
        return true
    }

}

protocol cgSize {

}


