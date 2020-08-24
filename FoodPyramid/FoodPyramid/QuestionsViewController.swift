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
    @IBOutlet weak var ageButton1: UIButton!
    @IBOutlet weak var ageButton2: UIButton!
    @IBOutlet weak var ageButton3: UIButton!
    @IBOutlet weak var ageButton4: UIButton!
    @IBOutlet weak var ageButton5: UIButton!
    @IBOutlet weak var ageButton6: UIButton!
    @IBOutlet weak var ageButton7: UIButton!
   
    override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
}
    
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
    ageButton1.setTitle(answers[0].text, for: .normal)
    ageButton2.setTitle(answers[1].text, for: .normal)
    ageButton3.setTitle(answers[2].text, for: .normal)
    ageButton4.setTitle(answers[3].text, for: .normal)
    ageButton5.setTitle(answers[4].text, for: .normal)
    ageButton6.setTitle(answers[5].text, for: .normal)
    ageButton7.setTitle(answers[6].text, for: .normal)
}
    

var answersChosen: [Answer] = []

    @IBAction func genderButtonSelected(_ sender: UIButton) {
        
        let currentAnswers = questions[questionIndex].answers
        
            switch sender {
            case singleButton1:
                answersChosen.append(currentAnswers[0])
                case singleButton1:
                answersChosen.append(currentAnswers[1])
                case singleButton1:
                answersChosen.append(currentAnswers[2])
                case singleButton1:
                answersChosen.append(currentAnswers[3])
                case singleButton1:
                answersChosen.append(currentAnswers[4])
                case singleButton1:
                answersChosen.append(currentAnswers[5])
                case singleButton1:
                answersChosen.append(currentAnswers[6])
            case singleButton2:
                answersChosen.append(currentAnswers[7])
                case singleButton2:
                answersChosen.append(currentAnswers[8])
                case singleButton2:
                answersChosen.append(currentAnswers[9])
                case singleButton2:
                answersChosen.append(currentAnswers[10])
                case singleButton2:
                answersChosen.append(currentAnswers[11])
                case singleButton2:
                answersChosen.append(currentAnswers[12])
                case singleButton2:
                answersChosen.append(currentAnswers[13])
            default:
                break
            }
        nextQuestion()
    }
    
    @IBAction func ageButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
            switch sender {
            case ageButton1:
                answersChosen.append(currentAnswers[0])
                case ageButton1:
                answersChosen.append(currentAnswers[7])
            case ageButton2:
                answersChosen.append(currentAnswers[1])
                case ageButton2:
                answersChosen.append(currentAnswers[8])
            case ageButton3:
                answersChosen.append(currentAnswers[2])
                case ageButton3:
                answersChosen.append(currentAnswers[9])
            case ageButton4:
                answersChosen.append(currentAnswers[3])
                case ageButton4:
                answersChosen.append(currentAnswers[10])
                case ageButton5:
                answersChosen.append(currentAnswers[4])
                case ageButton5:
                answersChosen.append(currentAnswers[11])
                case ageButton6:
                answersChosen.append(currentAnswers[5])
                case ageButton6:
                answersChosen.append(currentAnswers[12])
                case ageButton7:
                answersChosen.append(currentAnswers[6])
                case ageButton7:
                answersChosen.append(currentAnswers[13])
            default:
                break
            }
        
            nextQuestion()
    }
    
    func nextQuestion() {
        questionIndex += 1
    
        if questionIndex < questions.count {
            updateUI()
        } else {
          performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let resultsTableViewController = segue.destination as! ResultsTableViewController
            //resultsTableViewController.responses = answersChosen
        }
    }
    
}
