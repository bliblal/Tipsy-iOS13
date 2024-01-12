//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Bilal Javed on 12/01/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var perpersonText: String?
    var detailsText: String?

    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var perPersonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        perPersonLabel.text = perpersonText
        detailsLabel.text = detailsText

        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
