//
//  HelperMethods.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import Foundation

class HelperMethods {
    
    static let helper = HelperMethods()
    
    let KEY_PERSON = "person"
    
    let userdefualts = NSUserDefaults.standardUserDefaults()
    
    private var _loadedPersonDetails = [Person]()
    
    var loadedDetails: [Person] {
        return _loadedPersonDetails
    }
    
    func addNewPersonDetails(person: Person) {
        _loadedPersonDetails.append(person)
        SavePersonDetails()
        LoadPersonDetails()
    }
    
    func SavePersonDetails() {
        let data = NSKeyedArchiver.archivedDataWithRootObject(_loadedPersonDetails)
        userdefualts.setObject(data, forKey: KEY_PERSON)
    }
    
    func LoadPersonDetails() {
        if let persondata = userdefualts.objectForKey(KEY_PERSON) as? NSData {
            if let personarray = NSKeyedUnarchiver.unarchiveObjectWithData(persondata) as? [Person] {
                _loadedPersonDetails = personarray
            }
        }
    }
    
    func personHealthCare() -> Bool {
        return true
    }
}

