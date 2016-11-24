//
//  Mark.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class Mark:Object {
    dynamic private var _subject:String = ""
    dynamic private var _val:Double = 0
    dynamic private var _testName:String = ""
    dynamic private var _coef:Double = 1
    //var _testDate:String
    
    convenience init(subject:String, val:Double, testName:String, coef:Double) {
        self.init()
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
