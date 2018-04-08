//
//  DesignController.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/04/07.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import Foundation
import UIKit
//ラベルのカスタムクラス
@IBDesignable class BorderedLabel: UILabel {
    //枠線の色を設定
    @IBInspectable var borderColor: UIColor? {
        get {return UIColor(cgColor: self.layer.borderColor!)}
        set{self.layer.borderColor = newValue?.cgColor ?? nil}
    }
    //枠線の幅設定
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    //枠の角丸設定
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet{
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0.0
        }
    }
}
//ボタンのカスタムクラス
@IBDesignable class BorderedButton: UIButton {
    //枠線の色を設定
    @IBInspectable var borderColor: UIColor? {
        get {return UIColor(cgColor: self.layer.borderColor!)}
        set{self.layer.borderColor = newValue?.cgColor ?? nil}
    }
    //枠線の幅設定
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    //枠の角丸設定
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet{
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0.0
        }
    }
}
