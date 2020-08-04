//
//  QuestionsViewController.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 7/29/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    var questionIndex = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var genderStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    
    @IBOutlet weak var ageStackView: UIStackView!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    @IBOutlet weak var Label7: UILabel!
   
    override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
}
    
struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case gender, age
}
    
struct Answer {
    var text: String
}

var questions: [Question] = [
Question(text: "What's Your Gender?",
    type: .gender,
    answers: [
    Answer(text: "Female"),
    Answer(text: "Male")
        ]),

Question(text: "What's Your Age?",
    type: .age,
    answers: [
    Answer (text: "Age 2-3"),
    Answer (text: "Age 4-8"),
    Answer (text: "Age 9-13"),
    Answer (text: "Age 14-18"),
    Answer (text: "Age 19-30"),
    Answer (text: "Age 31-50"),
    Answer (text: "Age 51+")
        ])
]


func updateUI() {
    genderStackView.isHidden = true
    ageStackView.isHidden = true

    let currentQuestion = questions[questionIndex]
    let currentAnswers = currentQuestion.answers

    navigationItem.title = "Question #\(questionIndex+1)"
    questionLabel.text = currentQuestion.text

    switch currentQuestion.type {
    case .gender:
        updateGenderStack(using: currentAnswers)
    case .age:
        updateAgeStack(using: currentAnswers)
    }
}
    
func updateGenderStack(using answers: [Answer]) {
    genderStackView.isHidden = false
    singleButton1.setTitle(answers[0].text, for: .normal)
    singleButton2.setTitle(answers[1].text, for: .normal)
}
    
func updateAgeStack(using answers: [Answer]) {
    ageStackView.isHidden = false
    Label1.text = answers[0].text
    Label2.text = answers[1].text
    Label3.text = answers[2].text
    Label4.text = answers[3].text
    Label5.text = answers[4].text
    Label6.text = answers[5].text
    Label7.text = answers[6].text
}
    
}
