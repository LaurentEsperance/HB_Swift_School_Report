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
    @IBOutlet weak var ui_subj_lbl: UITextField!

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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
