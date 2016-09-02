//
//  personCell.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class personCell: UITableViewCell {
    @IBOutlet weak var personNameLbl: UILabel!
    @IBOutlet weak var personageLbl: UILabel!
    @IBOutlet weak var heartattckDetailsLbl: UILabel!
    
    func setPersonCell(person: Person){
        personNameLbl.text = person.PersonName
        personageLbl.text = "\(person.PersonAge)"
        heartattckDetailsLbl.text = ""
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
