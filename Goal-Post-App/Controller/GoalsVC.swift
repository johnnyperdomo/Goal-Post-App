//
//  GoalsVC.swift
//  Goal-Post-App
//
//  Created by Johnny Perdomo on 3/26/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit
import CoreData //core data to save persistent storage on device

class GoalsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let goal = Goal() //this is core data, but works like a class.
        tableView.delegate = self //conform to these protocols/ delegate & dataSource
        tableView.dataSource = self //so the app can know what you're talking about and whats the data source
    }
    
    
    //IBActions
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("btn was pressed")
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }  //create a cell and then present it
        cell.configureCell(description: "Eat Salad Twice a Week", type: .longTerm, goalProgressAmount: 2) //pass in the configure cell to present the cell with the custom data
        return cell //returns cell with the data
    }
    
    
    
    
    
    
    
    
    
}


