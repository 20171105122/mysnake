//
//  ViewController.swift
//  mysnake
//
//  Created by 冯佩玲 on 2018/11/29.
//  Copyright © 2018 冯佩玲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var food:Food!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        food=Food(view: view)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

