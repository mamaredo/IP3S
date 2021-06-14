//
//  SubViewController.swift
//  2021_IP3S_IW13A_12
//
//  Created by gakusei on 2021/05/31.
//  Copyright © 2021年 halnagoya. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    
    // 受け取り用変数
    var strIn1: String?
    var strIn2: String?
    @IBOutlet weak var lblDisp: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        lblDisp.text = strIn1
        
        // 入力エリアの値を元に計算
            

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
