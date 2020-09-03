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
        
        if loadData() != nil {
            quizViewOutlet.isHidden = true
            resultsViewOutlet.isHidden = false
        } else {
            quizViewOutlet.isHidden = false
            resultsViewOutlet.isHidden = true
        }

        
        // Do any additional setup after loading the view.
    }
    
    func quizCompleted(answers: [Answer], calories: Calories) {
        resultsViewController.responses = answers
        resultsViewController.updateUI(calories: calories)
        resultsViewOutlet.isHidden = false
        quizViewOutlet.isHidden = true
    }
    
    func loadData() -> (Calories, [Answer])? {
        return nil
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
