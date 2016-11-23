//
//  AddMarkViewController.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import UIKit

class AddMarkViewController: UIViewController {
    
    @IBOutlet weak var ui_nav_save_but: UIBarButtonItem!
    @IBOutlet weak var ui_nav_cancel_but: UIBarButtonItem!
    
    @IBOutlet weak var ui_testName_lbl: UITextField!
    @IBOutlet weak var ui_mark_lbl: UITextField!
    @IBOutlet weak var ui_coef_lbl: UITextField!
    @IBOutlet weak var ui_subj_lbl: UITextField!
    var markReportInstance: MarkReport = MarkReport.singleInstance
    
    var newMark:Mark = Mark()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ui_nav_ctl(_ sender: UIBarButtonItem) {
        if (sender == ui_nav_cancel_but) {
            dismiss(animated: true, completion: nil)
        }
    }
    
    func getMark() -> Mark {
        let newMark:Mark = Mark()
        newMark.subject = ui_subj_lbl.text!
        newMark.testName = ui_testName_lbl.text!
        newMark.coef = Double(ui_coef_lbl.text!)!
        newMark.val = Double(ui_mark_lbl.text!)!
        return newMark
    }
    
    /*
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if (sender as! UIBarButtonItem == ui_nav_save_but) {
     let newMark:Mark = Mark(subject: ui_subj_lbl.text!, val: Double(ui_mark_lbl.text!)!, testName: ui_testName_lbl.text!, coef: Double(ui_coef_lbl.text!)!)
     //dismiss(animated: true, completion: nil)
     if let dest = segue.destination as? DetailedReportTableViewController {
     let tableViewController:DetailedReportTableViewController = dest
     markReportInstance.listOfMarks.append(newMark)
     tableViewController.tableView.reloadData()
     print(tableViewController.markReportInstance.listOfMarks)
     segue.perform()
     } else {
     segue.perform()
     }
     }
     }*/
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        print("Unwind in progress")
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
