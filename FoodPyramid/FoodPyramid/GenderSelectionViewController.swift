//
//  GenderSelectionViewController.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 7/28/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit

class GenderSelectionViewController: UIViewController {
    
    var genderQuestions: [Question] = [
    Question(text: "What's Your Gender?",
             type: .gender,
             answers: [
                Answer(text: "Female", type: <#CalorieIntake#>),
                Answer(text: "Male", type: <#CalorieIntake#>)
        ]
    ) ]
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var maleButton: UIButton!
    
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}


