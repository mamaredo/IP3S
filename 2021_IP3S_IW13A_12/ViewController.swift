//
//  ViewController.swift
//  2021_IP3S_IW13A_12
//
//  Created by gakusei on 2021/04/19.
//  Copyright © 2021年 halnagoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var txtInput1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "テスト"
    }

    //  ボタンが押された時
    @IBAction func btnClick(_ sender: Any) {
        label.text = txtInput1.text
    }
    

}


