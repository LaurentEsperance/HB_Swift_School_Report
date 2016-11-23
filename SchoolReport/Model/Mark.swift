//
//  Mark.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import Foundation

class Mark {
    private var _subject:String
    private var _val:Double
    private var _testName:String
    private var _coef:Double
    //var _testDate:String
    
    init() {
        _subject = ""
        _val = 0
        _testName = ""
        _coef = 1
    }
    
    init(subject:String, val:Double, testName:String, coef:Double) {
        _subject = subject
        _val = val
        _testName = testName
        _coef = coef
    }
    
    public var subject : String{
        get {
        return _subject
        }
        set {
            _subject = newValue
        }
    }
    
    
    public var val : Double {
        get {
            return _val
        }
        set {
            _val = newValue
        }
    }
    
    public var testName : String {
        get {
            return _testName
        }
        set {
            _testName = newValue
        }
    }
    
    public var coef : Double {
        get {
            return _coef
        }
        set {
            _coef = newValue
        }
    }
    
}
