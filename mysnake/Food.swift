//
//  Food.swift
//  mysnake
//
//  Created by 冯佩玲 on 2018/11/29.
//  Copyright © 2018 冯佩玲. All rights reserved.
//

import UIKit

class Food: UIButton{
    let foodX=30  //食物大
    let foodY=30
    let screenX=345  //屏幕长宽
    let screenY=570
    
    //struct CGRect {
        //var x:Float,
        //CGFloaty,/
        //CGFloatWidth,
        //CGFloatheight,
    //}
    init(view: UIView) {
        //初始化在屏幕中央
        super.init(frame: CGRect(x: 180,y: 330, width: 30,height: 30))
        
        setImage(UIImage(named: "chicken"), for: .normal)
        layer.cornerRadius = CGFloat(foodX/2)
        clipsToBounds = true
        
        backgroundColor=UIColor.blue  //设置食物的颜色为蓝色
        view.addSubview(self)   //将Foody添加到主页view中显示
        addTarget(self, action: Selector(("changeFood:")), for: .touchDown)   //增加注册事件，用于后面的改变位置操作
        
    }
    
    //应编辑器默认生成的就好
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:)has not been implemented")
    }
    
    func changefFood(button: UIButton){     //增加一个事件函数，用于改变Food的位置
        button.frame.origin = randomPos()
    }
    
    func randomNum(num:Int) -> Int{
        //我们需要在点击Food时，随机改变Food的坐标，首先需要一个随机函数，我们选用arc4random_uniform函数，这个函数返回一个从0到传入参数之间的随机数，但由于arc4random_uniform的参数和返回值都是UInt32，因此我们封装一下，让它返回Int
        return Int(arc4random_uniform(UInt32(num)))
    }
    
    func randomPos() -> CGPoint{     //生成随机位置的函数，在屏幕的x,y范围内，生成随机坐标
        func round(value:Int) -> Int{  //对产生的随机数按食物大小取整，方便后面蛇的吃食操作
            return(value/foodX)*foodX
        }
        let curX = round(value: randomNum(num: screenX))
        let curY = round(value: 60+randomNum(num: screenY))  //60为屏幕的导航栏
        return CGPoint(x:curX, y:curY)
    }
    

}



