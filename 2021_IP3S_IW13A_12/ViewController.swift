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
        var flag: Bool = false
        var errMessage: String = ""
        // オプショナルバインディング
        // if文 条件内に変数宣言と代入を記述
        // 代入した際に、nilだったらfalse
        if let intInput1 = Int(txtInput1.text!) {
            total += intInput1
        } else {
            flag = true
            errMessage = "1つ目の入力に誤りがあります。"
        }
        if let intInput2 = Int(txtInput2.text!) {
            total += intInput2
        } else if !flag {
            flag = true
            errMessage = "2つ目の入力に誤りがあります。"
        }
        if total == 0 { errMessage = "数値を入力してください" }
        label.text = flag != true
        ? total.description
        : errMessage
    }
    
    // SubViewが終了した時の処理
    @IBAction func myUnwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        // 戻ってきた時、処理しない
    }
    
    // SubViewの表示前処理
    // swift2.0 prepareForSegue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // 引数segueから、SubViewControllerを取得
        let viewCon = segue.destination as! SubViewController
        
        // ViewControllerから値を仕掛ける
        viewCon.strIn1 = txtInput1.text
        viewCon.strIn2 = txtInput2.text
    }

}


