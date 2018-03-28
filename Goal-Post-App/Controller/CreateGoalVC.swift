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
    @IBOutlet weak var goalTxtView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var LongTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //IBActions
 
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    }
    

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
