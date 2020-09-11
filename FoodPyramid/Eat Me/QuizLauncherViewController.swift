//
//  QuizLauncherViewController.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 9/2/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit

class QuizLauncherViewController: UIViewController {

    var quizCompleted: (([Answer], Calories) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let calories = Defaults.calories {
            guard let resultsController = UIStoryboard(name: "Results", bundle: nil).instantiateViewController(withIdentifier: "QuizToResults") as? ResultsTableViewController else { return }
            
            resultsController.calories = calories
            
            present(resultsController, animated: true, completion: nil)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           AlertManager.requestAuthorizationIfNeeded(onViewController: self)
       }
    
     //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionViewController = segue.destination as? QuestionViewController {
            questionViewController.quizCompleted = self.quizCompleted
        }
    }
    

}
