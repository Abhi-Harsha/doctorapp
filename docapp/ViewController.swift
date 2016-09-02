//
//  ViewController.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var person: Person!
    
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
        //validation for name
       if identifier == "personDetailsVC"{
        if personnametext.text == nil || personnametext.text == "" {
            personnamevalidationtext.hidden = false
            return false
        }
       }
        //if person name and age are specified
        if let name = personnametext.text, age  = personagetext.text {
            //if person is male
            if personGender.selectedSegmentIndex == 0 {
                //if person has breathing problems and diabetic
                if breathingprobswitch.on && diabeticswitch.on {
                     person = Person(name: name, gender: "male", age: Int("\(age)")!, breathingProblem: true, diabetic: true)
                    HelperMethods.helper.addNewPersonDetails(person)
                } else if breathingprobswitch.on  {
                     person = Person(name: name, gender: "male", age: Int("\(age)")!, breathingProblem: true, diabetic: false)
                    HelperMethods.helper.addNewPersonDetails(person)
                } else if diabeticswitch.on {
                     person = Person(name: name, gender: "male", age: Int("\(age)")!, breathingProblem: false, diabetic: true)
                    HelperMethods.helper.addNewPersonDetails(person)
                } else {
                     person = Person(name: name, gender: "male", age: Int("\(age)")!, breathingProblem: false, diabetic: false)
                     HelperMethods.helper.addNewPersonDetails(person)
                }
                
            } else {
                //if person is female
                if breathingprobswitch.on && diabeticswitch.on {
                     person = Person(name: name, gender: "male", age: Int("\(age)")!, breathingProblem: true, diabetic: true)
                     HelperMethods.helper.addNewPersonDetails(person)
                } else if breathingprobswitch.on  {
                     person = Person(name: name, gender: "male", age: Int("\(age)")!, breathingProblem: true, diabetic: false)
                     HelperMethods.helper.addNewPersonDetails(person)
                } else if diabeticswitch.on {
                     person = Person(name: name, gender: "male", age: Int("\(age)")!, breathingProblem: false, diabetic: true)
                     HelperMethods.helper.addNewPersonDetails(person)
                } else {
                     person = Person(name: name, gender: "male", age: Int("\(age)")!, breathingProblem: false, diabetic: false)
                     HelperMethods.helper.addNewPersonDetails(person)
                }
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

