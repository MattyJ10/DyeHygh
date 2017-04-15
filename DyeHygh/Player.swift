//
//  Player.swift
//  DyeHygh
//
//  Created by Matt Jasaitis on 4/14/17.
//  Copyright © 2017 Jasaitis. All rights reserved.
//

import Foundation

class Player {
    
    var name : String = ""
    var doesHaveTable : Bool = true 
    
    func setName(name : String) {
        self.name = name
    }
    
    func setTable(table : Bool) {
        self.doesHaveTable = table
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getTable() -> Bool {
        return self.doesHaveTable
    }
    
}
