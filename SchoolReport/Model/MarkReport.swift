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
    private static var _listOfMeansBySection:[Double] = []
    
    public static var singleInstance:MarkReport {
        if _instance == nil{
            _instance = MarkReport()
        }
        return _instance!
    }
    
    private init() {
    }
    
    public var listOfMarks:[Mark]{
        get{
            return MarkReport._listOfMarks
        }
        set {
            MarkReport._listOfMarks = newValue
        }
    }
    
    public var listOfSubjects:[String]{
        var subjects:[String] = []
        if !(MarkReport._listOfMarks.isEmpty) {
            for i:Int in 0...MarkReport._listOfMarks.count-1 {
                let sub:String = MarkReport._listOfMarks[i].subject
                if !(subjects.contains(sub)) {
                    subjects.append(sub)
                }
            }
        }
        return subjects
    }
    
    public static var listOfMeanBySection:[Double] {
        return MarkReport._listOfMeansBySection
    }
    
    public func listOfSubjectsWithSection(subjects:[String])->[[Mark]]{
        var tableOfMarsWithSections:[[Mark]] = []
        var meanValbySection:[Double] = []
        var listMarks:[Double] = []
        var listCoef:[Double] = []
        var sizeList:Int = 0
        
        MarkReport._listOfMeansBySection = []
        //Create the table with empty cell with subjects list size
        for _:Int in 0...subjects.count-1 {
            tableOfMarsWithSections.append([])
        }
        // Sort in subjects
        for i:Int in 0...MarkReport._listOfMarks.count-1 {
            let indexInSubjectsList:Int = subjects.index(of: MarkReport._listOfMarks[i].subject)!
            tableOfMarsWithSections[indexInSubjectsList].append(MarkReport._listOfMarks[i])
        }
        
        //Mean calculation bu section
        meanValbySection = []
        for i:Int in 0...tableOfMarsWithSections.count-1{
            listMarks = []
            listCoef = []
            sizeList = tableOfMarsWithSections[i].count-1
            for j:Int in 0...sizeList{
                let mark:Mark = tableOfMarsWithSections[i][j]
                listMarks.append(mark.val)
                listCoef.append(mark.coef)
            }
            meanValbySection.append(Tools.meanWithCoef(values: listMarks, coef: listCoef, nbValue: sizeList))
        }
        return tableOfMarsWithSections
    }
    
    /*public func getMeanBySection() -> [Double]{
     var meanbySection: [Double] = []
     var listMarks : [Double] = []
     var listCoef : [Double] = []
     let listOfMarks = MarkReport._listOfMarks
     for i:Int in 0...listOfMarks.count-1{
     listMarks.append(listOfMarks[i].val)
     listCoef.append(listOfMarks[i].coef)
     }
     Tools.meanWithCoef(values: listMarks, coef: listCoef, nbValue: <#T##Int#>)
     }*/
}
