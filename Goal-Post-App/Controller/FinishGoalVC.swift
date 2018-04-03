//
//  FinishGoalVC.swift
//  Goal-Post-App
//
//  Created by Johnny Perdomo on 4/3/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    
    
    
    //outlets
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    
    var goalDescription: String! //to hold data of the models
    var goalType: GoalType!
    
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTxtField.delegate = self
    }
    
    //actions
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        //pass data into core data goal model
        
    }
    
    
    
}
