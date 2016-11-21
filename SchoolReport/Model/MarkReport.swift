//
//  MarkReport.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import Foundation

class MarkReport {
    
    private static var _instance:MarkReport?
    private static var _listOfMarks:[Mark] = []
    
    public static var singleInstance:MarkReport {
        if _instance == nil{
            _instance = MarkReport()
        }
        return _instance!
    }
    
    private init() {
    }
    
    
    public static var listOfMarks:[Mark]{
        get{
            return _listOfMarks
        }
        set {
            _listOfMarks = newValue
        }
    }
}
