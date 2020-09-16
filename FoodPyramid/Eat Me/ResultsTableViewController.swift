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
    
    var calories: Calories?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let calories = calories {
            updateUI(calories: calories)
        }
    }
    
    //Sets the labels text equal to the specific food groups reccomened serving size/quantity
    
    func updateUI(calories: Calories) {
        self.calories = calories
        fruitLabel.text = calories.recommendedServings[.fruit]?[ServingSize.quantity] as? String
        vegetableLabel.text = calories.recommendedServings[.vegetables]?[ServingSize.quantity] as? String
        dairyLabel.text = calories.recommendedServings[.dairy]?[ServingSize.quantity] as? String
        grainsLabel.text = calories.recommendedServings[.grain]?[ServingSize.quantity] as? String
        proteinLabel.text = calories.recommendedServings[.protein]?[ServingSize.quantity] as? String
        calorieLabel.text = calories.recommendedServings[.calorie]?[ServingSize.calories] as? String
    }
    
    
    // dimsisses results view
    @IBAction func retakeQuizButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    // segue to go to beginning of qiz again
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "GoToQuizOpener":
           guard let vc = segue.destination as? QuizLauncherViewController else { return }
        case "FruitToView":
            guard let vc = segue.destination as? EqualCupViewController else { return }
            vc.amounts = Amount(amounts: .fruitAmount)
            case "VegToView":
                guard let vc = segue.destination as? EqualCupViewController else { return }
                vc.amounts = Amount(amounts: .vegetableAmount)

            case "DairyToView":
                guard let vc = segue.destination as? EqualCupViewController else { return }
                vc.amounts = Amount(amounts: .dairyAmount)

            case "GrainsToView":
                guard let vc = segue.destination as? EqualCupViewController else { return }
                vc.amounts = Amount(amounts: .grainAmount)

            case "ProteinToView":
                guard let vc = segue.destination as? EqualCupViewController else { return }
                vc.amounts = Amount(amounts: .proteinAmount)

        default:
            return
        }
    }
    
  
    
}
