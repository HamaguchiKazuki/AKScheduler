//
//  ViewController.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/03/29.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
        let leftSwipeRecognizer  = UISwipeGestureRecognizer(target: self, action: #selector(leftSwiped(_:)))
        let rightSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(rightSwiped(_:)))
        let upSwipeRecognizer    = UISwipeGestureRecognizer(target: self, action: #selector(upSwiped(_:)))
        let downSwipeRecognizer  = UISwipeGestureRecognizer(target: self, action: #selector(downSwiped(_:)))
        //スワイプの方向を判断
        leftSwipeRecognizer.direction  = .left
        rightSwipeRecognizer.direction = .right
        //上下の遷移は指の動きが逆になるため反対に設定
        upSwipeRecognizer.direction    = .down
        downSwipeRecognizer.direction  = .up
        //viewに追加
        self.view.addGestureRecognizer(leftSwipeRecognizer)
        self.view.addGestureRecognizer(rightSwipeRecognizer)
        self.view.addGestureRecognizer(downSwipeRecognizer)
    }
    //MARK: - UISwipeGestureを用いて画面遷移
    //左へスワイプしたときに呼ばれる関数
    @objc func leftSwiped(_ sender: Any) {
        print("leftSwipe!")
        performSegue(withIdentifier: "calculator", sender: nil)
    }
    //右へスワイプしたときに呼ばれる関数
    @objc func rightSwiped(_ sender: Any) {
        print("rightSwipe!")
        performSegue(withIdentifier: "scheduler", sender: nil)
    }
    //上へスワイプしたときに呼ばれる関数
    @objc func upSwiped(_ sender: Any) {
        print("upSwipe!")
    }
    //下へスワイプしたときに呼ばれる関数
    @objc func downSwiped(_ sender: Any) {
        print("downSwipe!")
        performSegue(withIdentifier: "setting", sender: nil)
    }
}

