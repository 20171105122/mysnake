//
//  ViewController.swift
//  mysnake
//
//  Created by 冯佩玲 on 2018/11/29.
//  Copyright © 2018 冯佩玲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var food: Food!  //增加Food属性
    var timer=Timer()   //为了让蛇动起来，增加一个定时器，当定时器触发时，修改蛇头的坐标，从而完成蛇的运动
    var snake: Snake!    //增加Snake属性

    override func viewDidLoad() {
        super.viewDidLoad()
        //var timer = Timer()
        
        let backgroudImage = UIImage(named: "backgroud")!     //修改view的背景图片
        view.backgroundColor = UIColor(patternImage: backgroudImage)
        
        food = Food(view: view)   //初始化Food
        snake = Snake(view: view)
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: Selector("walk"), userInfo: nil, repeats: true)
        
    }
    
    func walk() {    //定义定时器触发时的执行函数
        snake.walk()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

