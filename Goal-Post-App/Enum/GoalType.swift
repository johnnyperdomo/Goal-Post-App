//
//  GoalType.swift
//  Goal-Post-App
//
//  Created by Johnny Perdomo on 3/27/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import Foundation

//enum to deal with the type of goal/// Short term vs. long term goal. lets the user choose which type
enum GoalType: String { //makes it of type string
    case longTerm = "Long Term" //presents it into textual form
    case shortTerm = "Short Term" //core data needs it to be a string
}
