//
//  SchedulerViewController.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/04/02.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import UIKit

class SchedulerViewController: UIViewController {

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
        //スワイプの方向を判断
        leftSwipeRecognizer.direction  = .left
        //viewに追加
        self.view.addGestureRecognizer(leftSwipeRecognizer)
    }
    //MARK: - UISwipeGestureを用いて画面遷移
    //左へスワイプしたときに呼ばれる関数
    @objc func leftSwiped(_ sender: Any) {
        print("leftSwipe!")
        dismiss(animated: false, completion: nil)
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
