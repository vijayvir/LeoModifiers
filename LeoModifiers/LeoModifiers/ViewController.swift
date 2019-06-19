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

class Person : LeoModifable  {
    var name = "Sansa Stark"
    var awesome = true
    var someInterger : Int?
    var someDictiona : [String : Any]?
    var parent : SomeParent? 
}

extension LeoModifiers.Person {
    func withName(_ name : String) -> LeoModifiers.Person {
        self.name = name
        return self
    }
    func withAwesome(_ awesome : Bool) -> LeoModifiers.Person {
        self.awesome = awesome
        return self
    }
    func withSomeInterger(_ someInterger : Optional<Int>) -> LeoModifiers.Person {
        self.someInterger = someInterger
        return self
    }
    func withSomeDictiona(_ someDictiona : Optional<Dictionary<String, Any>>) -> LeoModifiers.Person {
        self.someDictiona = someDictiona
        return self
    }
    func withParent(_ parent : Optional<SomeParent>) -> LeoModifiers.Person {
        self.parent = parent
        return self
    }
    func end(){
    }
}

class CityModel  : LeoModifable{
    var index : Int =  0
    var name : String?
    var pincode : String?
    var website : String?
    var color : UIColor  = .blue
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CityModel().leoMake(isRoot : false)
        
//       let some =  Person().withAwesome(true)
//        .withName("SomeName")
//        .withSomeInterger(3)
//        .withSomeDictiona(["someKey":"dsadsa"])
//        .withParent(SomeParent())
//
//        print(some.someDictiona)
        
    }


}

