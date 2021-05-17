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
    @IBOutlet weak var txtInput2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "テスト"
    }

    //  ボタンが押された時
    @IBAction func btnClick(_ sender: Any) {
        // 型変換（キャスト）
        // Ⅰ: 関数で型変換
        // Ⅱ: クラスのメソッドで型変換
        // Ⅲ: 戻される値をクラス・関数で型変換

        var total: Int = 0
        
        // オプショナルバインディング
        // if文 条件内に変数宣言と代入を記述
        // 代入した際に、nilだったらfalse
        if let intInput1 = Int(txtInput1.text!) {
            total += intInput1
        }
        if let intInput2 = Int(txtInput2.text!) {
            total += intInput2
        }
        
        label.text = total.description
    }
    

}


