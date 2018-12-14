//
//  mysnake.swift
//  mysnake
//
//  Created by 冯佩玲 on 2018/12/14.
//  Copyright © 2018 冯佩玲. All rights reserved.
//

import Foundation

//增加方向
enum Direction{
    case UP
    case DOWN
    case LEFT
    case RIGHT
}

extension Direction{
    func walk( point: inout CGpoin){   //描述蛇的前进
        switch self{
        case .UP: point.y -= CGFloat(30)
        case .DOWN: point.y += CGFloat(30)
        case .LEFT: point.x -= CGFloat(30)
        case .RIGHT: point.x += CGFloat(30)
        }
    }
    mutating func changeDirection(cur: CGPoint , target: CGPoint){     //描述蛇的方向变化
        switch self{
        case .UP: self = cur.x > target.x ? .LEFT : .RIGHT
        case .DOWN: self = cur.x > target.x ? .LEFT : .RIGHT
        case .LEFT: self = cur.y > target.y ? .UP: .DOWN
        case .RIGHT: self = cur.y > target.y ? .UP: .DOWN
        }
    }
}
