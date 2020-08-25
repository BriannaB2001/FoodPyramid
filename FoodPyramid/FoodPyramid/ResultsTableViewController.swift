//
//  ResultsTableViewController.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 7/30/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    
    @IBOutlet weak var calorieLabel: UILabel!
    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet weak var vegetableLabel: UILabel!
    @IBOutlet weak var dairyLabel: UILabel!
    @IBOutlet weak var grainsLabel: UILabel!
    @IBOutlet weak var meatLabel: UILabel!
    
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //calculatePersonalityResult()
    }
        
 
}
