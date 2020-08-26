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
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case gender, age
}
    
struct Answer {
    var text: String
    var type: CalorieIntake
}

enum Gender: String, CaseIterable {
    case female = "Female"
    case male = "Male"
    }

enum AgeRange: String, CaseIterable {
    case a2To3 = "Age 2-3"
    case a4To8 = "Age 4-8"
    case a9To13 = "Age 9-13"
    case a14To18 = "Age 14-18"
    case a19To30 = "Age 19-30"
    case a31To50 = "Age 31-50"
    case a51 = "Age 51+"
}

enum FoodGroups: String {
    case fruit = "Fruit"
    case vegetables = "Vegetables"
    case dairy = "Dairy"
    case grain = "Grains"
    case protein = "Protein"

var string: String {
    return self.rawValue
    }
}

enum CalorieIntake: String {
    case f1000 = "Calorie Intake: 1000"
    case f1400 = "Calorie Intake: 1400"
    case f1600 = "Calorie Intake: 1600"
    case f2000 = "Calorie Intake: 2000"
    case f2200 = "Calorie Intake: 2200"
    case f1800 = "Calorie Intake: 1800"
    case m1000 = "Calorie Intak = 1000"
    case m1400 = "Calorie Intakes: 1400"
    case m1800 = "Calorie Intake = 1800"
    case m2400 = "Calorie Intake: 2400"
    case m2800 = "Calorie Intake: 2800"
    case m2200 = "Calorie Intakes = 2200"

var string: String {
    return self.rawValue
    }
}

enum ServingSize: String {
    case cups = "Cup(s)"
    case ounces = "Ounce(s)"

var string: String {
    return self.rawValue
    }
}

enum ServingSizeKey {
    case servingSize
    case quantity
}
    
struct Person {
    var calorieIntake: CalorieIntake

    init(calorieIntake: CalorieIntake) {
    self.calorieIntake = calorieIntake
}


var recommendedServings: [FoodGroups: [ServingSizeKey: Any]] {
var recServings = [FoodGroups: [ServingSizeKey: Any]]()

switch (calorieIntake) {
case (.f1000):
    recServings[.fruit] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.f1400):
    recServings[.fruit] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "4", ServingSizeKey.servingSize: ServingSize.ounces]
case (.f1600):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
case (.f2000):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
case (.f2200):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5 1/2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.f1800):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
    case (.m1000):
    recServings[.fruit] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.m1400):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.m1800):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
case (.m2400):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "8", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "6 1/2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.m2800):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "8", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "6 1/2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.m2200):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5 1/2", ServingSizeKey.servingSize: ServingSize.ounces]
}

return recServings
    }
}
