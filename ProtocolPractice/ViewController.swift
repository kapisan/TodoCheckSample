//
//  ViewController.swift
//  ProtocolPractice
//
//  Created by niwa  shuhei on 2021/08/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!

    let okImage = UIImage(named: "ok")
    let ngImage = UIImage(named: "ng")

    var switch_flag1: Bool = false
    var switch_flag2: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        button1.setImage(ngImage, for: .normal)
        button2.setImage(ngImage, for: .normal)
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



}

protocol cgSize {

}


