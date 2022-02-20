//
//  Wage.swift
//  Cost Calculator
//
//  Created by Caio Teodoro on 19/08/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import Foundation

class Wage {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
