//
//  SchedulerViewController.swift
//  AKScheduler
//
//  Created by 濱口和希 on 2018/04/02.
//  Copyright © 2018年 KagatukiMizuha. All rights reserved.
//

import UIKit
import JBDatePicker

class SchedulerViewController: UIViewController, JBDatePickerViewDelegate {
    @IBOutlet weak var datePicker: JBDatePickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.delegate = self
    }
    
    func didSelectDay(_ dayView: JBDatePickerDayView) {
        print("date selected: \(dayView.date!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        datePicker.updateLayout()
    }
}
