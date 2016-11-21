//
//  Mark.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import Foundation

class Mark {
    var _subject:String
    var _val:Double
    var _testName:String
    //var _testDate:String
    
    init() {
        _subject = ""
        _val = 0
        _testName = ""
    }
    
    init(subject:String, val:Double, testName:String) {
        _subject = subject
        _val = val
        _testName = testName
    }
    
    var subject : String{
        get {
        return _subject
        }
        set {
            _subject = newValue
        }
    }
    
    
    var val : Double {
        get {
            return _val
        }
        set {
            _val = newValue
        }
    }
    
    var testName : String {
        get {
            return _testName
        }
        set {
            _testName = newValue
        }
    }
    
}
