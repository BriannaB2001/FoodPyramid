//
//  QuestionData.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 7/30/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import Foundation

enum Gender {
    case female, male
}

enum AgeRange: String {
    case a2To3 = "2-3"
    case a4To8 = "4-8"
    case a9To13 = "9-13"
    case a14To18 = "14-18"
    case a19To30 = "19-30"
    case a31To50 = "31-50"
    case a51 = "51+"
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

enum FoodPyramid: String {
    case f1000 = "Calorie Intake: 1000"
    case f1200 = "Calorie Intake: 1200"
    case f1600 = "Calorie Intake: 1600"
    case f2000 = "Calorie Intake: 2000"
    case f2200 = "Calorie Intake: 2200"
    case f1800 = "Calorie Intake: 1800"
    case m1000 = "Calorie Intak = 1000"
    case m1400 = "Calorie Intake: 1400"
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
    var gender: Gender
    var ageRange: AgeRange

init(gender: Gender, ageRange: AgeRange) {
    self.gender = gender
    self.ageRange = ageRange
}


var recommendedServings: [FoodGroups: [ServingSizeKey: Any]] {
var recServings = [FoodGroups: [ServingSizeKey: Any]]()

switch (gender, ageRange) {
case (.female, .a2To3):
    recServings[.fruit] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.female, .a4To8):
    recServings[.fruit] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "4", ServingSizeKey.servingSize: ServingSize.ounces]
case (.female, .a9To13):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
case (.female, .a14To18):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
case (.female, .a19To30):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5 1/2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.female, .a31To50):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
case (.female, .a51):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
    case (.male, .a2To3):
    recServings[.fruit] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "1", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.male, .a4To8):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.male, .a9To13):
    recServings[.fruit] = [ServingSizeKey.quantity: "1 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5", ServingSizeKey.servingSize: ServingSize.ounces]
case (.male, .a14To18):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "8", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "6 1/2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.male, .a19To30):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "8", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "6 1/2", ServingSizeKey.servingSize: ServingSize.ounces]
case (.male, .a31To50):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "7", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
case (.male, .a51):
    recServings[.fruit] = [ServingSizeKey.quantity: "2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.vegetables] = [ServingSizeKey.quantity: "2 1/2", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.dairy] = [ServingSizeKey.quantity: "3", ServingSizeKey.servingSize: ServingSize.cups]
    recServings[.grain] = [ServingSizeKey.quantity: "6", ServingSizeKey.servingSize: ServingSize.ounces]
    recServings[.protein] = [ServingSizeKey.quantity: "5 1/2", ServingSizeKey.servingSize: ServingSize.ounces]
}

return recServings
    }
    }