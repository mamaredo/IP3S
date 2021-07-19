//
//  ViewController.swift
//  2021_IP3S_IW13A_02_todo
//
//  Created by gakusei on 2021/07/05.
//  Copyright © 2021年 halnagoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // ToDo保持用の変数（配列）
    var todo = [String]()
    
    // テーブルの行数を返す処理
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルの識別と取得
        var cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        // 配列からデータを設定
        var title = todo[indexPath.row]
        
        return cell
    }
    
    // ボタンを押した時
    @IBAction func btnAddClick(_ sender: Any) {
        // ダイアログの表示
        // ダイアログの作成
        var alertCon = UIAlertController(title: "ToDo追加", message: "ToDoを入力してください。", preferredStyle: UIAlertController.Style.alert)
        
        // 入力フィールドの追加
        alertCon.addTextField(configurationHandler: nil)
        // okボタン
        var okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (action: UIAlertAction) -> Void in
                // okボタンを押した際の処理
            if let txt = alertCon.textFields?.first{
                
            }
        }
        
        // キャンセルボタン
        var cancelAction = UIAlertAction(title: "CANCEL", style: UIAlertAction.Style.cancel, handler: nil)
        
        // ボタンをアラートダイアログに追加
        alertCon.addAction(okAction)
        alertCon.addAction(cancelAction)
        
        // アラートダイアログの表示
        present(alertCon, animated: true, completion: nil)
    }

}

