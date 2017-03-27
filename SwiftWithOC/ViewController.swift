//
//  ViewController.swift
//  SwiftWithOC
//
//  Created by 修海锟 on 2017/3/27.
//  Copyright © 2017年 修海锟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //swift调用oc方法
        let funOC = ObjcClass()
        funOC.desc2()
        funOC.desc22()
        let funOCClass2 = sum2(10, 1)
        print("swift调用OC类中的C函数输出:\(funOCClass2)")
        
        //swift调用c函数(无头文件)
        desc1()
        let funcCClassss = sum1(10, 2)
        print("swift调用没有头文件的C语言类输出:\(funcCClassss)")//12
        
        //swift调用c函数(有头文件)
        desc3()
        let funcCClass33 = sum3(10, 3)
        print("swift调用含有头文件的C语言类输出:\(funcCClass33)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

