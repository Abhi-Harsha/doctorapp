//
//  PersonDetailsVC.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class PersonDetailsVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var personDetails = [Person]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidAppear(animated: Bool) {
        tableView.delegate = self
        tableView.dataSource = self
        
        var person = Person(name: "Alex", gender: "Male", age: 23, breathingProblem: true, diabetic: true)
        var person1 = Person(name: "Alex", gender: "Male", age: 23, breathingProblem: true, diabetic: true)
        var person2 = Person(name: "Alex", gender: "Male", age: 23, breathingProblem: true, diabetic: true)
        
        personDetails.append(person)
        personDetails.append(person1)
        personDetails.append(person2)
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let person = personDetails[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("personCell") as? personCell {
        cell.setPersonCell(person)
            return cell
        }else {
            let cell = personCell()
            cell.setPersonCell(person)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personDetails.count
    }
    
    @IBAction func onBackPressed(sender: UIButton!){
        dismissViewControllerAnimated(true, completion: nil)
    }

}
