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

    func memorizeCheck1(setBool: Bool) {
        UserDefaults.standard.set(setBool, forKey: "CheckKey1")
    }

    func memorizeCheck2(setBool: Bool) {
        UserDefaults.standard.set(setBool, forKey: "CheckKey2")
    }

    func loadMemorizeCheck1() {
        switch_flag1 = UserDefaults.standard.bool(forKey: "CheckKey1")
        if(switch_flag1 == false) {
            print("switch_flag1:変更なし")
            button1.setImage(ngImage, for: .normal)
        } else {
            switch_flag1 = true
            button1.setImage(okImage, for: .normal)
        }
    }

    func loadMemorizeCheck2() {
        switch_flag2 = UserDefaults.standard.bool(forKey: "CheckKey2")
        if(switch_flag2 == false) {
            print("switch_flag2:変更なし")
            button2.setImage(ngImage, for: .normal)
        } else {
            switch_flag2 = true
            button2.setImage(okImage, for: .normal)
        }
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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        loadMemorizeCheck1()
        loadMemorizeCheck2()
    }

    @IBAction func buttonAction1(_ sender: UIButton) {

        if(switch_flag1 == false) {
            switch_flag1 = true
            button1.setImage(okImage, for: .normal)
            memorizeCheck1(setBool: true)
        } else {
            switch_flag1 = false
            button1.setImage(ngImage, for: .normal)
            memorizeCheck1(setBool: false)
        }

        
    }

    @IBAction func buttonAction2(_ sender: UIButton) {

        if(switch_flag2 == false) {
            switch_flag2 = true
            button2.setImage(okImage, for: .normal)
            memorizeCheck2(setBool: true)
        } else {
            switch_flag2 = false
            button2.setImage(ngImage, for: .normal)
            memorizeCheck2(setBool: false)
        }
    }

    @IBAction func clearButtonAction(_ sender: UIButton) {
        if(switch_flag1 == false) {
            print("switch_flag1:変更なし")
        } else {
            switch_flag1 = false
            button1.setImage(ngImage, for: .normal)
            memorizeCheck1(setBool: false)
        }

        if(switch_flag2 == false) {
            print("switch_flag2:変更なし")
        } else {
            switch_flag2 = false
            button2.setImage(ngImage, for: .normal)
            memorizeCheck2(setBool: false)
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


