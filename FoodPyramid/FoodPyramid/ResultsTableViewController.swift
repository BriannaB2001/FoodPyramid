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
        
//    func calculatePersonalityResult() {
//        var frequencyOfAnswers: [ResponseType: Int] = [:]
//        let responseTypes = responses.map { $0.text }
//
//        for response in responseTypes {
//            frequencyOfAnswers[response] = (frequencyOfAnswers[response]
//            ?? 0) + 1
//        }
//
//        let frequentAnswerSorted = frequencyOfAnswers.sorted(by: { (pair1, pair2) -> Bool in return pair1.value > pair2.value
//        })
//
//        let mostCommonAnswer = frequentAnswerSorted.first!.key
//
//        let mostCommonANswer = frequencyOfAnswers.sorted { $0.1 > $1.1}.first!.key
//    
//    }
 
}
