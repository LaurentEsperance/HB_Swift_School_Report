//
//  Tools.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import Foundation

class Tools {
    
    public static func mean(values:[Double], nbValue:Int ) -> Double {
        var addingVal:Double = 0
        for val in values {
            addingVal += val
        }
        return addingVal/Double(nbValue)
    }
    
    public static func meanWithCoef(values:[Double], coef:[Double], nbValue:Int ) -> Double {
        var addingVal:Double = 0
        var sumCoef:Double = 0
        for i in 0...values.count-1 {
            addingVal += values[i] * coef[i]
            sumCoef += coef[i]
        }
        return addingVal/sumCoef
    }
}
