//
//  MainViewController.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/03/29.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {
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
        let downSwipeRecognizer  = UISwipeGestureRecognizer(target: self, action: #selector(downSwiped(_:)))
       //上下の遷移は指の動きが逆になるため反対に設定
        downSwipeRecognizer.direction = .up
        //viewに追加
        self.view.addGestureRecognizer(downSwipeRecognizer)
    }
    //MARK: - UISwipeGestureを用いて画面遷移
    //下へスワイプしたときに呼ばれる関数
    @objc func downSwiped(_ sender: Any) {
        performSegue(withIdentifier: "setting", sender: nil)
    }
}


