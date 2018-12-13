//
//  Snake.swift
//  mysnake
//
//  Created by 冯佩玲 on 2018/12/7.
//  Copyright © 2018 冯佩玲. All rights reserved.
//

import UIKit

class Snake{        //完整的定义蛇
    let head = SnakeHead()
    let body = SnakeBody()
    
    
    //weak var mainView: UIView!    //保存弱引用，避免互相引用引起的内存泄露
    
    init(view: UIView) {
        //mainView = view
        head.nextItem = body.bodys[0]
        
        view.addSubview(head)
        view.addSubview(body.bodys[0])
    }
    
    func walk() {
        head.frame.origin.x += 30.0
    }
}
