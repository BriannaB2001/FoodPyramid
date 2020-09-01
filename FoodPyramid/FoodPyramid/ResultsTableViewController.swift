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
    @IBOutlet weak var proteinLabel: UILabel!
    
    var responses: [Answer]!
    var calories: Calories!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitLabel.text = calories.recommendedServings[.fruit]?[ServingSize.quantity] as? String
        vegetableLabel.text = calories.recommendedServings[.vegetables]?[ServingSize.quantity] as? String
        dairyLabel.text = calories.recommendedServings[.dairy]?[ServingSize.quantity] as? String
        grainsLabel.text = calories.recommendedServings[.grain]?[ServingSize.quantity] as? String
        proteinLabel.text = calories.recommendedServings[.protein]?[ServingSize.quantity] as? String
        calorieLabel.text = calories.recommendedServings[.calorie]?[ServingSize.calories] as? String
        
        //calculatePersonalityResult()
    }
}
