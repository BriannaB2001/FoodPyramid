//
//  QuestionViewController.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 8/25/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    var quizCompleted: (([Answer], Calories) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    struct Question {
        var text: String
        var answers: [Answer]
    }
    
    var quizQuestion: Question =
        Question(text: "What Best Describes You?",
                 answers: [
                    Answer(text: "Female, Age 2-3", type: .f1000),
                    Answer(text: "Female, Age 4-8", type: .f1400),
                    Answer(text: "Female, Age 9-13", type: .f1600),
                    Answer(text: "Female, Age 14-18", type: .f1800),
                    Answer(text: "Female, Age 19-30", type: .f2000),
                    Answer(text: "Female, Age 31-50", type: .f2200),
                    Answer(text: "Female, Age 51+", type: .f1800),
                    Answer(text: "Male, Age 2-3", type: .m1000),
                    Answer(text: "Female, Age 4-8", type: .m1400),
                    Answer(text: "Male, Age 9-13", type: .m1800),
                    Answer(text: "Male, Age 14-18", type: .m2400),
                    Answer(text: "Male, Age 19-30", type: .m2800),
                    Answer(text: "Male, Age 31-50", type: .m2400),
                    Answer(text: "Male, Age 51+", type: .m2200)
            ]
    )
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        quizQuestion.answers.count
    }
    
    func answer(for indexPath: IndexPath) -> Answer {
        quizQuestion.answers[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
        cell.textLabel?.text = answer(for: indexPath).text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        quizCompleted?([], Calories(calorieIntake: answer(for: indexPath).type))
    }
}
