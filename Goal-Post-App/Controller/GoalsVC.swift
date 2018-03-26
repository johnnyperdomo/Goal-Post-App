//
//  GoalsVC.swift
//  Goal-Post-App
//
//  Created by Johnny Perdomo on 3/26/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    //IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //IBActions
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("btn was pressed")
    }
}

