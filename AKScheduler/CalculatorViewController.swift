//
//  CalculatorViewController.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/04/02.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
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
        let rightSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(rightSwiped(_:)))
        //スワイプの方向を判断
        rightSwipeRecognizer.direction = .right
        self.view.addGestureRecognizer(rightSwipeRecognizer)
    }
    //MARK: - UISwipeGestureを用いて画面遷移
    //右へスワイプしたときに呼ばれる関数
    @objc func rightSwiped(_ sender: Any) {
        print("rightSwipe!")
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
