//
//  ViewController.swift
//  LeoModifiers
//
//  Created by tecH on 10/06/19.
//  Copyright © 2019 vijayvir Singh. All rights reserved.
//
// https://stackoverflow.com/questions/24844681/list-of-classs-properties-in-swift

import UIKit
class SomeParent {
    var some1 : String =  ""
}

class Person : LeoModifiers  {
    var name = "Sansa Stark"
    var awesome = true
    var parent : SomeParent? 
}

extension Person {
    func withName(_ name : String) -> Person {
        self.name = name
        return self
    }
    func withAwesome(_ awesome : Bool) -> Person {
        self.awesome = awesome
        return self
    }
    func withParent(_ parent : Optional<SomeParent>) -> Person {
        self.parent = parent
        return self
    }
    func end(){
        
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       Person().leoMake()
        
    }


}

