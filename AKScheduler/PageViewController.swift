////
////  PageViewController.swift
////  AKScheduler
////
////  Created by 濱口和希 on 2018/04/04.
////  Copyright © 2018年 KagatukiMizuha. All rights reserved.
////
//
//import UIKit
//
//class PageViewController: UIPageViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.setViewControllers([getMainVC()], direction: .forward, animated: true, completion: nil)
//        self.dataSource = self
//    }
//
//    func getMainVC() -> MainViewController {
//        return storyboard!.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
//    }
//    
//    func getCalculatorVC() -> CalculatorViewController {
//        return storyboard!.instantiateViewController(withIdentifier: "CalculatorViewController") as! CalculatorViewController
//    }
//    
//    func getSchedulerVC() -> SchedulerViewController {
//        return storyboard!.instantiateViewController(withIdentifier: "SchedulerViewController") as! SchedulerViewController
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//}
//
//extension PageViewController:UIPageViewControllerDataSource {
//    
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//        if viewController.isKind(of: MainViewController.self) {
//            //画面をMain->Calculatorに移動させる
//            return getCalculatorVC()
//        } else if viewController.isKind(of: SchedulerViewController.self) {
//            //画面をScheduler->Mainに移動させる
//            return getMainVC()
//        } else {
//            return nil
//        }
//    }
//    
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//        if viewController.isKind(of: MainViewController.self) {
//            //画面をMain->Schedulerに移動させる
//            return getSchedulerVC()
//        } else if viewController.isKind(of: CalculatorViewController.self){
//            //画面をCalculator->Mainに移動させる
//            return getMainVC()
//        } else {
//            return nil
//        }
//    }
//}
