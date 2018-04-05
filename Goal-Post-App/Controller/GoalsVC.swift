//
//  GoalsVC.swift
//  Goal-Post-App
//
//  Created by Johnny Perdomo on 3/26/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit
import CoreData //core data to save persistent storage on device

let appDelegate = UIApplication.shared.delegate as? AppDelegate //we can now access the appdelegate from anywhere in our project



class GoalsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    var goals: [Goal] = [] //open array, we use this array for the fetch request since it returns an array of our data
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let goal = Goal() //this is core data, but works like a class.
        tableView.delegate = self //conform to these protocols/ delegate & dataSource
        tableView.dataSource = self //so the app can know what you're talking about and whats the data source
    }
    
    override func viewWillAppear(_ animated: Bool) { //view will appear is called everytime the view appears, so its perfect for our fetch request
        super.viewDidAppear(animated)
        self.fetch { (complete) in //call fetch
            if complete {
                if goals.count >= 1 { //if there is 1 result or more in our data, show the result
                    tableView.isHidden = false //show the table view
                } else {
                    tableView.isHidden = true //if there are no results, don't show the tableView
                }
            }
        }
        
        tableView.reloadData() //reload the data after we fetch no matter what

        
    }
    
    //IBActions
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else { return } //to create identifier to move between views
        presentDetail(viewControllerToPresent: createGoalVC) //to present the view controller using the extension animation
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return goals.count //the amount of items in the array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }  //create a cell and then present it
        
        let goal = goals[indexPath.row] //pull out the items in the row at the index path
        
        cell.configureCell(goal: goal) //pass in the configure cell to present the cell with the custom data: from 'GoalCell'
        return cell //returns cell with the data
    }

}


extension GoalsVC {
    func fetch(completion: (_ complete: Bool) ->()) { //func to fetch data from persistant container
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return } //hold that context
        
        let fetchRequest = NSFetchRequest<Goal>(entityName: "Goal") //trying to fetch items from the entity "Goal"
        
        do { //do catch block
            goals = try managedContext.fetch(fetchRequest) as! [Goal] //throws; call the fetch request, returns an array of all of the results we ask for.
            print("successfully fetched data")
            completion(true)
        } catch {
            debugPrint("Could not fetch: \(error.localizedDescription)")
            completion(false)
        }
        
    }
}















