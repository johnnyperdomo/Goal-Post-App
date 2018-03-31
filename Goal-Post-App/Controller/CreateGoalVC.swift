//
//  CreateGoalVC.swift
//  Goal-Post-App
//
//  Created by Johnny Perdomo on 3/28/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    
    //IBOutlets
    @IBOutlet weak var goalTxtView: UITextField!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var LongTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm //setting it equal to short term from the beginning
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard() //if you call this, when keyboard goes up, nxt button goes up with it as well
        shortTermBtn.setSelectedColor() //sets the button to be dark green
        LongTermBtn.setDeselctedColor() //sets btn to be light green
    }
    
    //IBActions
 
    @IBAction func shortTermBtnWasPressed(_ sender: Any) { //switch btn colors if this one is pressed
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        LongTermBtn.setDeselctedColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) { //switch btn colors if this one is pressed
        goalType = .longTerm
        shortTermBtn.setDeselctedColor()
        LongTermBtn.setSelectedColor()
    }
    
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    }
    

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail() //to dismiss it with the specific animation we wanted
    }
    
}
