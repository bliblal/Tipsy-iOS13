//
//  Logic.swift
//  Tipsy
//
//  Created by Bilal Javed on 11/01/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation


struct Logic{
    var totalPeople: Int = 2
    var amountEntered: Float = 0
    var tipSelected: Int = 0
    var perPerson: Float = 0
    
    var detailsText: String = ""
    
    
    mutating func calculatePerPerson(){
        perPerson = (amountEntered + (amountEntered * Float(tipSelected) / 100)) / Float(totalPeople)
        print(perPerson)
        print(amountEntered)
    }
    
    func getTotalPeople() -> Int {
        return totalPeople
    }
    
    func getAmountEntered() -> Float{
        return amountEntered
    }
    
    func getTipSelected() -> Int {
        return tipSelected
    }
    
    func getPerPerson() -> Float{
        return perPerson
    }
    
    mutating func setDetails(){
        detailsText = "Split between \(String(totalPeople)) people, with \(String(tipSelected))% tip."
    }
    
    
    
}
