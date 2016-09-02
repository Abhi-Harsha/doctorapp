//
//  PersonDetailsVC.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class PersonDetailsVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidAppear(animated: Bool) {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let person = HelperMethods.helper.loadedDetails[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("personCell") as? personCell {
        cell.setPersonCell(person)
            return cell
        }else {
            let cell = personCell()
            print(cell)
            cell.setPersonCell(person)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HelperMethods.helper.loadedDetails.count
    }
    
    @IBAction func onBackPressed(sender: UIButton!){
        dismissViewControllerAnimated(true, completion: nil)
    }

}
