//
//  MarkReport.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class MarkReport {
    
    private static var _instance:MarkReport?
    private var _listOfMarks:[Mark] = []
    private var _listOfMeansBySection:[Double] = []
    let realm = try! Realm()
    
    public static var singleInstance:MarkReport {
        if _instance == nil{
            _instance = MarkReport()
        }
        return _instance!
    }
    
    public var listOfMarks:[Mark]{
        get{
            //return _listOfMarks
            let realm = try! Realm()
            _listOfMarks = Array(realm.objects(Mark.self))
            return _listOfMarks
        }
        set {
            _listOfMarks = newValue
        }
    }
    
    public var listOfMarksInDT:Results<Mark>{
        get {
            return realm.objects(Mark.self)
        }
    }
    
    
    public var listOfSubjects:[String]{
        var subjects:[String] = []
        if !(_listOfMarks.isEmpty) {
            for i:Int in 0..._listOfMarks.count-1 {
                let sub:String = _listOfMarks[i].subject
                if !(subjects.contains(sub)) {
                    subjects.append(sub)
                }
            }
        }
        return subjects
    }
    
    public var listOfMeanBySection:[Double] {
        return _listOfMeansBySection
    }
    
    public func listOfSubjectsWithSection(subjects:[String])->[[Mark]]{
        var tableOfMarsWithSections:[[Mark]] = []
        
        _listOfMeansBySection = []
        //Create the table with empty cell with subjects list size
        for _:Int in 0...subjects.count-1 {
            tableOfMarsWithSections.append([])
        }
        // Sort in subjects
        for i:Int in 0..._listOfMarks.count-1 {
            let indexInSubjectsList:Int = subjects.index(of: _listOfMarks[i].subject)!
            tableOfMarsWithSections[indexInSubjectsList].append(_listOfMarks[i])
        }
        
        return tableOfMarsWithSections
    }
    
    public func getMeanBySection(listOfMarks:[[Mark]]) -> [Double]{
        var meanbySection: [Double] = []
        var listMarks:[Double] = []
        var listCoef:[Double] = []
        var sizeList:Int = 0
        for i:Int in 0...listOfMarks.count-1{
            listMarks = []
            listCoef = []
            sizeList = listOfMarks[i].count-1
            for j:Int in 0...sizeList{
                let mark:Mark = listOfMarks[i][j]
                listMarks.append(mark.val)
                listCoef.append(mark.coef)
            }
            meanbySection.append(Tools.meanWithCoef(values: listMarks, coef: listCoef, nbValue: sizeList))
        }
        return meanbySection
    }
    
    public func deleteDataInTable(row:Int,section:Int){
        let subj = listOfSubjects[section]
        try! realm.write {
            let dataToDelete = realm.objects(Mark.self).filter("_subject = \(subj)")
            realm.delete(dataToDelete)
        }
    }
}
