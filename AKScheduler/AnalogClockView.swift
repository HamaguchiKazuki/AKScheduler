//
//  AnalogClockView.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/04/05.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import UIKit

class AnalogClockView: UIView {

    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    
    func loadNib(){
        let view = Bundle.main.loadNibNamed("AnalogClockView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }

}
