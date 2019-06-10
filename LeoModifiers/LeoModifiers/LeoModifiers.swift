//
//  LeoModifiers.swift
//  LeoModifiers
//
//  Created by tecH on 10/06/19.
//  Copyright © 2019 vijayvir Singh. All rights reserved.
//

import Foundation
protocol LeoModifiers {
}

import Foundation
extension StringProtocol {
    var firstUppercasedLMC : String {
        guard let first = first else { return "" }
        return String(first).uppercased() + dropFirst()
    }
    var firstCapitalizedLMC: String {
        guard let first = first else { return "" }
        return String(first).capitalized + dropFirst()
    }
    
    var unCapitalizedLMC: String {
        guard let first = first else { return "" }
        return String(first).lowercased() + dropFirst()
    }
}

extension LeoModifiers {
    func leoMake( isRoot : Bool = true ){
        let classType  =   isRoot ? String(describing: self) : "\(type(of: self))"
        
        
        print("extension \( classType ) {")
        for case let (propertyName?, value) in Mirror(reflecting: self).children {
            print(" func with\(propertyName.firstCapitalizedLMC)(_ \(propertyName) : \(type(of: value))) -> \(classType) {")
            print("self.\(propertyName) = \(propertyName)")
            print("return self")
            print(" }")
        }
        print("func end(){")
        print(" }")
        print(" }")
    }
    
}
        
