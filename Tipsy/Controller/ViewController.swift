//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var logic = Logic()
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipPercent0: UIButton!
    @IBOutlet weak var tipPercent10: UIButton!
    @IBOutlet weak var tipPercent20: UIButton!
    @IBOutlet weak var totalPeople: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
        
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        updateValues()
        logic.calculatePerPerson()
        updateView()
        logic.setDetails()
        self.performSegue(withIdentifier: "displayResults", sender: self)
        
    }
    
    @IBAction func tipButtonPressed(_ sender: UIButton) {
        sender.isSelected = true
        switch sender.tag {
        case 0 :
            logic.tipSelected = 0
            tipPercent10.isSelected = false
            tipPercent20.isSelected = false
        case 1 :
            logic.tipSelected = 10
            tipPercent0.isSelected = false
            tipPercent20.isSelected = false
        case 2 :
            logic.tipSelected = 20
            tipPercent0.isSelected = false
            tipPercent10.isSelected = false
        default :
            logic.tipSelected = 0
            tipPercent10.isSelected = false
            tipPercent20.isSelected = false
        }
    }
    @IBAction func stepperChanged(_ sender: UIStepper) {
        logic.totalPeople = Int(sender.value)
        updateValues()
        updateView()
    }
    
    func updateView(){
        amountTextField.text = String(logic.amountEntered)
        totalPeople.text = String(logic.totalPeople)
        
    }
    
    func updateValues(){
        logic.amountEntered = Float(amountTextField.text!)!
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "displayResults" {
            let resultsVC = segue.destination as! ResultsViewController
            resultsVC.detailsText = logic.detailsText
            resultsVC.perpersonText = String(logic.perPerson)
        }
    }
    
    
    
}

