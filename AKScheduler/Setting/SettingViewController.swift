//
//  SettingViewController.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/04/02.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGestureRecognizer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    ///スワイプ処理の初期化
    func setupGestureRecognizer() {
        //スワイプを判断するための変数を定義
        let upSwipeRecognizer    = UISwipeGestureRecognizer(target: self, action: #selector(upSwiped(_:)))
        //上下の遷移は指の動きが逆になるため反対に設定
        upSwipeRecognizer.direction    = .down
        //viewに追加
        self.view.addGestureRecognizer(upSwipeRecognizer)
    }
    //MARK: - UISwipeGestureを用いて画面遷移
    //上へスワイプしたときに呼ばれる関数
    @objc func upSwiped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
