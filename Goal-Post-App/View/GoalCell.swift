//
//  GoalCell.swift
//  Goal-Post-App
//
//  Created by Johnny Perdomo on 3/26/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    //IBOutlets
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) { //when we init these cells the data will input into the cells
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue //the raw value is a string
        self.goalProgressLbl.text = String(describing: goalProgressAmount) //converts int into string, the textual value, not the numerical value
        
        
        
    }
    
}
