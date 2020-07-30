//
//  QuestionData.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 7/30/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: FoodPyramid
}

enum FoodPyramid: String {
    case C1000 = "Calorie Intake: 1000", F1200 = "Calorie Intake: 1200", F1600 = "Calorie Intake: 1600", F2000 = "Calorie Intake: 2000", F2200 = "Calorie Intake: 2200", F1800 = "Calorie Intake: 1800", M1400 = "Calorie Intake = 1400", M1800 = "Calorie Intake = 1800", M2400 = "Calorie Intake: 2400", M2800 = "Calorie Intake: 2800", M2200 = "Calorie Intake = 2200"
    
    var FoodPyramid: String {
        switch self {
        case .C1000:
            return ""
        case .F1200:
            return ""
        case .F1600:
            return ""
        case .F2000:
            return ""
        case .F2200:
            return ""
        case .F1800:
            return ""
        case .M1400:
            return ""
        case .M1800:
            return ""
        case .M2400:
            return ""
        case .M2800:
            return ""
        case .M2200:
            return ""
        }
    }
    }
    
var questions: [Question] = [
Question(text: "What's Your Gender?",
         answers: [
            Answer(text: "Female", type: .C1000),
            Answer(text: "Female", type: .F1200),
            Answer(text: "Female", type: .F1600),
            Answer(text: "Female", type: .F2000),
            Answer(text: "Female", type: .F2200),
            Answer(text: "Female", type: .F1800),
            Answer(text: "Male", type: .C1000),
            Answer(text: "Male", type: .M1400),
            Answer(text: "Male", type: .M1800),
            Answer(text: "Male", type: .M2400),
            Answer(text: "Male", type: .M2800),
            Answer(text: "Male", type: .M2200),
                    ]),

Question(text: "What's Your Age?",
          answers: [
            Answer (text: " 2-3", type: .C1000),
            Answer (text: "4-8", type: .F1200),
            Answer (text: "4-8", type: .M1400),
            Answer (text: "9-13", type: .F1600),
            Answer (text: "9-13", type: .M1800),
            Answer (text: "14-18", type: .F2000),
            Answer (text: "14-18", type: .M2400),
            Answer (text: "19-30", type: .F2200),
             Answer (text: "19-30", type: .M2800),
            Answer (text: "31-50", type: .F2000),
            Answer (text: "31-50", type: .M2400),
            Answer (text: "51+", type: .F1800),
            Answer (text: "51+", type: .M2200)
            
                ])
]

