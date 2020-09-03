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

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           AlertManager.requestAuthorizationIfNeeded(onViewController: self)
       }
    
     //MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionViewController = segue.destination as? QuestionViewController {
            questionViewController.quizCompleted = self.quizCompleted
        }
    }
    

}
