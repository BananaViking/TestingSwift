//
//  Hater.swift
//  TestingSwift
//
//  Created by Banana Viking on 11/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import Foundation

struct Hater {
    var hating = false
    
    mutating func hadABadDay() {
        hating = true
    }
    
    mutating func hadAGoodDay() {
        hating = false
    }
}
