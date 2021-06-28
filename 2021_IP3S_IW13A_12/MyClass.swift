//
//  MyClass.swift
//  2021_IP3S_IW13A_12
//
//  Created by gakusei on 2021/06/14.
//  Copyright © 2021年 halnagoya. All rights reserved.
//

import Foundation

class MyClass {
    
    // 変数（プロパティ, フィールド, メンバ変数）
    var errMsg: String = ""
    var intResult: Int = 0
    
    // 関数（メソッド）
    // 入力検証
    // 引数でもらってきた値を判定
    func fncTypeCheck(strParam: String) -> Bool {
        var flg: Bool = false
        // 引数の情報を数値へキャストする
        if let intParam = Int(strParam) {
            // キャスト成功
            flg = true
            
            intResult += intParam
        } else {
            // キャスト失敗
            // キャスト失敗の要因チェック
            if strParam == "" {
                // 未入力
                errMsg = "未入力"
            } else {
                errMsg = "入力値が整数以外"
            }
        }
        return flg
    }
    
    // errMsg変数の内容を返す処理(accesser/getter)
    func getErrMsg() -> String {
        return errMsg
    }
    
    // intResult変数の内容を返す処理
    func getIntResult() -> Int {
        return intResult
    }
}
