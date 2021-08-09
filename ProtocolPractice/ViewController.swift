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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        button1.setImage(ngImage, for: .normal)
        button2.setImage(ngImage, for: .normal)
    }

    @IBAction func buttonAction1(_ sender: UIButton) {
    }

    @IBAction func buttonAction2(_ sender: UIButton) {
    }



}

protocol cgSize {

}


