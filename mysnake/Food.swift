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
    
    CGRect CGRectMske(
    CGFloat x,
    CGFloat y,
    CGFloat width,
    CGFloat height,
    )
    init (view: UIView){
        super.init=UILabel(frame: CGRect(x: 180,y: 330, width: 30,height: 30))
        backgroundColor=UIColor.blue
        view.addSubview(self)
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:)has not been implemented")
    }
}



