//
//  GoalsVC.swift
//  Goal-Post-App
//
//  Created by Johnny Perdomo on 3/26/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit
import CoreData //core data to save persistent storage on device

class GoalsVC: UIViewController {

    //IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let goal = Goal() //this is core data, but works like a class.
    }
    
    
    //IBActions
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("btn was pressed")
    }
}

