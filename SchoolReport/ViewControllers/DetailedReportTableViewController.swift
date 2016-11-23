//
//  DetailedReportTableViewController.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import UIKit

class DetailedReportTableViewController: UITableViewController {
    
    var markReportInstance: MarkReport = MarkReport.singleInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (markReportInstance.listOfMarks.isEmpty) {
            markReportInstance.listOfMarks.append(Mark(subject: "Anglais", val: 10, testName: "Test 1", coef: 2))
            markReportInstance.listOfMarks.append(Mark(subject: "Math", val: 15, testName: "Essai 1", coef: 4))
            
        }
        
        
        //print(markReportInstance)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return markReportInstance.listOfSubjects.count
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
     return markReportInstance.listOfSubjects[section]
     }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return markReportInstance.listOfSubjectsWithSection(subjects: markReportInstance.listOfSubjects)[section].count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailed_mark_cell", for: indexPath) as! DetailedTableViewCell
        let listOfMarks = markReportInstance.listOfSubjectsWithSection(subjects: markReportInstance.listOfSubjects)
        //print(listOfMarks)
        let newMark = listOfMarks[indexPath.section][indexPath.row]
        cell.displayDetailed(markIn: newMark)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Section_footer")
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //print(markReportInstance)
    }
    
    @IBAction func unwindAddMark(for unwindSegue: UIStoryboardSegue) {
        if let addMarkController:AddMarkViewController = unwindSegue.source as? AddMarkViewController {
            let newMarktoAppend:Mark = addMarkController.getMark()
            markReportInstance.listOfMarks.append(newMarktoAppend)
            tableView.reloadData()
            print("Unwind Launched")
        }
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
