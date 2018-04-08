//
//  CalculatorViewController.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/04/02.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import UIKit
import Expression


class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ビューがロードされた時点で式と答えのラベルは空する
        formulaLabel.text = ""
        answerLabel.text  = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func inputFormula(_ sender: UIButton) {
        //ボタン（Cと=以外が押されたら式を表示する）
        guard let formulaText = formulaLabel.text else {
            return
        }
        guard let senderedText = sender.titleLabel?.text else {
            return
        }
        formulaLabel.text = formulaText + senderedText
    }
    
    @IBAction func clearCalculation(_ sender: UIButton) {
        //Cボタンが押されたら式と答えをクリアする
        formulaLabel.text = ""
        answerLabel.text  = ""
    }
    
    @IBAction func answerCalculate(_ sender: UIButton) {
        //=ボタンが押されたら答えを計算して表示する
        guard let formulaText = formulaLabel.text else {
            return
        }
        let fotmula: String = formatFormula()
        answerLanel.text = evalFormula()
    }
    
}
