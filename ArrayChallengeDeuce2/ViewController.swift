//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    var line = ["Albert Einstein", "Cher", "Neil deGrasse Tyson", "Yoshi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNameToDeliLine("Meg Ryan")
        
    }
    
     //Create your methods here
    
    func addNameToDeliLine(name : String) -> String  {
        
        var returnString: String = ""
        
        if name == "Billy Crystal" {
            
            deliLine.insert(name, atIndex: 0)
            
            returnString = "Welcome Billy! You can sit wherever you like."
        
        } else if name == "Meg Ryan" {
            
            deliLine.insert(name, atIndex: 0)
            
            returnString = "Welcome Meg! You can sit wherever you like."
        
        } else if deliLine.isEmpty {
            
            deliLine.insert(name, atIndex: 0)
            
            returnString = "Welcome \(name), you're first in line!"
        
        } else {
            
            deliLine.append(name)
            
            returnString = "Welcome \(name), you're number \(deliLine.count) in line."
        }
        
        return returnString
        
    }
    
    func nowServing() -> String {
        
        if deliLine.isEmpty {
            
            return "There is no-one to be served."
        }
        
        else {
            
            let nextPerson = deliLine.first
            
            deliLine .removeAtIndex(0)
            
            return "Now serving \(nextPerson)"
        }
    }

    func deliLineDescription() -> String {
        
        if line.isEmpty {
            
            return "The line is currently empty."
            
        }
        else {
            
            var returnString : String = ""
            
            for (index, _ ) in line.enumerate() {
                
                returnString = "The line is: \(line[index])\n"
                
            }
            return returnString
        }
        
    }
}

