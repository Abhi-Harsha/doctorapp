//
//  ViewController.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var personnametext: UITextField!
    @IBOutlet weak var personagetext: UITextField!
    @IBOutlet weak var personnamevalidationtext: UILabel!
    @IBOutlet weak var breathingprobswitch: UISwitch!
    @IBOutlet weak var diabeticswitch:UISwitch!
    @IBOutlet weak var personGender: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        personnametext.delegate = self
        personagetext.delegate = self
        personnametext.returnKeyType = .Done
        personagetext.returnKeyType = .Done
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
       if identifier == "personDetailsVC"{
        if personnametext.text == nil || personnametext.text == "" {
            personnamevalidationtext.hidden = false
            return false
        }
    }
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        personnamevalidationtext.hidden = true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    
    
    
    
    

}

