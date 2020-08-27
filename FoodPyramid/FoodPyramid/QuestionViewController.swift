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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    struct Question {
        var text: String
        var answers: [Answer]
    }
    
    var quizQuestions: [Question] = [
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
        ) ]
    
    enum Person: String, CaseIterable {
        case Fa2To3 = "Female, Age 2-3"
        case Fa4To8 = "Female, Age 4-8"
        case Fa9To13 = "Female, Age 9-13"
        case Fa14To18 = "Female, Age 14-18"
        case Fa19To30 = "Female, Age 19-30"
        case Fa31To50 = "Female, Age 31-50"
        case Fa51 = "Female, Age 51+"
        case Ma2To3 = "Male, Age 2-3"
        case Ma4To8 = "Male, Age 4-8"
        case Ma9To13 = "Male, Age 9-13"
        case Ma14To18 = "Male, Age 14-18"
        case Ma19To30 = "Male, Age 19-30"
        case Ma31To50 = "Male, Age 31-50"
        case Ma51 = "Male, Age 51+"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Person.allCases.count
    }
    
    func person(for indexPath: IndexPath) -> Person {
        Person.allCases[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
        cell.textLabel?.text = person(for: indexPath).rawValue
        return cell
    }
    
}
