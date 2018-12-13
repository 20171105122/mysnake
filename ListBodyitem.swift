//
//  ListBodyitem.swift
//  mysnake
//
//  Created by 冯佩玲 on 2018/12/6.
//  Copyright © 2018 冯佩玲. All rights reserved.
//

import UIKit

//定义蛇
class ListBodyItem: UIButton{    //定义蛇的组成
    
    override var frame: CGRect{   //实现蛇运动时的每一次的位置更新
        set{
            if let next = nextItem{
                next.frame.origin = frame.origin
            }
            super.frame.origin = newValue.origin
        }
        get{
            return super.frame
        }
    }
    var nextItem:ListBodyItem?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.red
    }
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}

class SnakeHead:ListBodyItem{       //定义蛇头，继承自ListBodyItem
    init() {
        super.init(frame: CGRect(x:90, y:90, width:30, height:30))
        setImage(UIImage(named: "snakeHead"), for: .normal)
        layer.cornerRadius = 17
        clipsToBounds = true   //去除边界
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SnakeBody{     //定义蛇的身体，用数组表示
    var bodys = [ListBodyItem]()
    var startRadius: CGFloat = 20.0
    
    init() {     //初始化身体时只有一段
        bodys.append(conBody(frame: CGRect(x:60, y:90, width:30, height:30)))
    }
    
    func addOne(view:UIView) {       //为蛇添加一段（完成一次吃食后调用),当蛇成功吃掉一个食物时，就会触发addOne操作
        let curLast = bodys.last!
        
        bodys.append(conBody(frame: curLast.frame))
        curLast.nextItem = bodys.last
        
        view.addSubview(bodys.last!)
    }
    
    func conBody(frame:CGRect) -> ListBodyItem {        //构造一个bodyitem
        let body = ListBodyItem(frame: frame)
        body.setImage(UIImage(named: "snakeBody"), for: .normal)
        body.layer.cornerRadius = startRadius
        body.clipsToBounds = true
        startRadius += 0.5
        return body
    }
}
