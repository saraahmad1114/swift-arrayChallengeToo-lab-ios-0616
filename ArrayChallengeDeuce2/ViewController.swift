//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
//Note to self!!!
//Remember that all the methods/functions you write should always be outside the super.viewDidLoad function, you will only be calling on the functions in the .viewDidLoad function to see if they do what you do!
class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
func addNameToDeliLine(name: String) -> String
{
    var deliGreeting :String = ""
    
    if deliLine.isEmpty
    {
        deliLine.append(name)
        deliGreeting = "Welcome \(name), you're first in line!"
    }
    else if name == "Billy Crystal" || name == "Meg Ryan"
    {
        deliLine.insert(name, atIndex: 0)
        deliGreeting = "Welcome Billy! You can sit wherever you like."
    }
    else if name == "Meg Ryan"
    {
        deliLine.insert(name, atIndex: 0)
        deliGreeting = "Welcome Meg! You can sit wherever you like."
    }
    else
    {
        deliLine.append(name)
        deliGreeting = "Welcome \(name), you're number \(deliLine.count) in line."
    }
    return deliGreeting
}
    
func nowServing() -> String
{
    var returnString: String = ""
    
    if !deliLine.isEmpty
    {
        returnString = "Now serving \(deliLine.first)!"
    }
    else if deliLine.isEmpty
    {
        returnString = "There is no-one to be served."
    }
    return returnString
}

func deliLineDescription() -> String
{
    var placeAndPerson: String = ""
    var fullString: String = ""
    for (index, person) in deliLine.enumerate() {
        
        if index < deliLine.count - 1
        {
            placeAndPerson = "\(index+1). \(person)\n"
        }
        else
        {
            placeAndPerson = "\(index+1). \(person)"
        }
    }
    fullString = "The line is:\n \(placeAndPerson)"
    
   return fullString 
}




}

