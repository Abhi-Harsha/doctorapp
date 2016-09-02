//
//  personCell.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class personCell: UITableViewCell {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var hearattckLbl: UILabel!
    @IBOutlet weak var hasbreathingproblems: UILabel!
    @IBOutlet weak var isDiabetic: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setPersonCell(person: Person){
        print(person.PersonName)
        nameLbl.text = person.PersonName
        if let age = person.PersonAge {
            ageLbl.text = "\(age)"
        }
        
        if person.PersonBreathingProblems {
            hasbreathingproblems.text = "has breathing problems"
        } else {
            hasbreathingproblems.text = "does not have breathing problems"
        }
        
        if person.PersonIsDiabetic {
            isDiabetic.text = "is diabetic"
        } else {
            isDiabetic.text = "is not diabetic"
        }
        
         //if a person satisfies all conditions of a diagnosis
        if person.PersonAge > 30 {
            if person.PersonGender == "male" {
            if person.PersonBreathingProblems &&  person.PersonIsDiabetic {
                hearattckLbl.text = "\(person.PersonName) will have a hearttack"
                }
            } else {
                //greater than 30 but female
                if person.PersonBreathingProblems &&  person.PersonIsDiabetic {
                    hearattckLbl.text = "\(person.PersonName) might get a heart attack"
                }
                if person.PersonBreathingProblems {
                    hearattckLbl.text = "\(person.PersonName) might get a heart attack"
                }
                
                if person.PersonIsDiabetic {
                    hearattckLbl.text = "\(person.PersonName) might get a heart attack"
                }
            }
        } else {
            if person.PersonBreathingProblems &&  person.PersonIsDiabetic {
                hearattckLbl.text = "\(person.PersonName) might get a heart attack"
            }
            
            if person.PersonGender == "male" {
                if person.PersonBreathingProblems  {
                    hearattckLbl.text = "\(person.PersonName) might get a heart attack"
                }
                
                if person.PersonIsDiabetic {
                    hearattckLbl.text = "\(person.PersonName) might get a heart attack"
                }
            } else {
                hearattckLbl.text = "\(person.PersonName) is unlikely to get heart attack"
            }
        }
        
        
     }
   
}
