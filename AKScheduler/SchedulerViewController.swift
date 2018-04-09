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
    
    //カレンダーを作成するためのView
    @IBOutlet weak var datePicker: JBDatePickerView!
    
    lazy var dateFormatter: DateFormatter = {
        var formatter = DateFormatter()
        formatter.timeStyle = .none
        formatter.dateStyle = .medium
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.delegate = self
    }
    
    func didSelectDay(_ dayView: JBDatePickerDayView) {
        print("date selected: \(dateFormatter.string(from: dayView.date!))")
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
