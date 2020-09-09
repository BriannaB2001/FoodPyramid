//
//  MasterViewController.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 9/2/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var quizViewOutlet: UIView!
    @IBOutlet weak var resultsViewOutlet: UIView!
    
    lazy var quizLauncherViewController: QuizLauncherViewController = {
        let navigationController = self.children[0] as! UINavigationController
        let quizLauncherViewController = navigationController.viewControllers.first! as! QuizLauncherViewController
        quizLauncherViewController.quizCompleted = self.quizCompleted
        return quizLauncherViewController
    }()

    lazy var resultsViewController: ResultsTableViewController = {
         let navigationController = self.children[1] as! UINavigationController
        let resultsViewController = navigationController.viewControllers.first! as! ResultsTableViewController
        return  resultsViewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = quizLauncherViewController
        _ = resultsViewController
        
        if let (calories, answers) = loadData() {
            resultsViewController.loadViewIfNeeded()
            quizCompleted(answers: answers, calories: calories)
        } else {
            quizViewOutlet.isHidden = false
            resultsViewOutlet.isHidden = true
        }

        
        // Do any additional setup after loading the view.
    }
    
    func quizCompleted(answers: [Answer], calories: Calories) {
        Defaults.calories = calories
        Defaults.answers = answers
        resultsViewController.responses = answers
        resultsViewController.updateUI(calories: calories)
        resultsViewOutlet.isHidden = false
        quizViewOutlet.isHidden = true
    }
    
    func loadData() -> (Calories, [Answer])? {
        if let calories = Defaults.calories, let answers = Defaults.answers {
            return (calories, answers)
        }
        return nil
    }

}
