//
//  QuestionData.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 7/30/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import Foundation

struct Answer {
    var text: String
    var type: CalorieIntake
}

enum FoodGroups: String {
    case fruit = "Fruit"
    case vegetables = "Vegetables"
    case dairy = "Dairy"
    case grain = "Grains"
    case protein = "Protein"
    case calorie
    
    var string: String {
        return self.rawValue
    }
}

enum CalorieIntake: String {
    case f1000
    case f1400
    case f1600
    case f2000
    case f2200
    case f1800
    case m1000
    case m1400
    case m1800
    case m2400
    case m2800
    case m2200
    
    var string: String {
        return self.rawValue
    }
}

enum ServingSize {
    case quantity
    case calories
}

struct Calories {
    var calorieIntake: CalorieIntake
    
    init(calorieIntake: CalorieIntake) {
        self.calorieIntake = calorieIntake
    }
    
    var recommendedServings: [FoodGroups: [ServingSize: Any]] {
        var recServings = [FoodGroups: [ServingSize: Any]]()
        
        switch (calorieIntake) {
        case (.f1000):
            recServings[.fruit] = [ServingSize.quantity: "1 Cup"]
            recServings[.vegetables] = [ServingSize.quantity: "1 Cup"]
            recServings[.dairy] = [ServingSize.quantity: "2 Cups"]
            recServings[.grain] = [ServingSize.quantity: "3oz"]
            recServings[.protein] = [ServingSize.quantity: "2oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 1000"]
        case (.f1400):
            recServings[.fruit] = [ServingSize.quantity: "1 Cup"]
            recServings[.vegetables] = [ServingSize.quantity: "1 1/2 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "2 1/2 Cups"]
            recServings[.grain] = [ServingSize.quantity: "5oz"]
            recServings[.protein] = [ServingSize.quantity: "4oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 1400"]
        case (.f1600):
            recServings[.fruit] = [ServingSize.quantity: "1 1/2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "2 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "3 Cups"]
            recServings[.grain] = [ServingSize.quantity: "5oz"]
            recServings[.protein] = [ServingSize.quantity: "5oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 1600"]
        case (.f2000):
            recServings[.fruit] = [ServingSize.quantity: "1 1/2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "2 1/2 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "3 Cups"]
            recServings[.grain] = [ServingSize.quantity: "6oz"]
            recServings[.protein] = [ServingSize.quantity: "5oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 2000"]
        case (.f2200):
            recServings[.fruit] = [ServingSize.quantity: "2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "2 1/2 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "3 Cups"]
            recServings[.grain] = [ServingSize.quantity: "6oz"]
            recServings[.protein] = [ServingSize.quantity: "5 1/2 oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 2200"]
        case (.f1800):
            recServings[.fruit] = [ServingSize.quantity: "1 1/2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "2 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "3 Cups"]
            recServings[.grain] = [ServingSize.quantity: "5oz"]
            recServings[.protein] = [ServingSize.quantity: "5oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 1800"]
        case (.m1000):
            recServings[.fruit] = [ServingSize.quantity: "1 Cup"]
            recServings[.vegetables] = [ServingSize.quantity: "1 Cup"]
            recServings[.dairy] = [ServingSize.quantity: "2 Cups"]
            recServings[.grain] = [ServingSize.quantity: "3oz"]
            recServings[.protein] = [ServingSize.quantity: "2oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 1000"]
        case (.m1400):
            recServings[.fruit] = [ServingSize.quantity: "1 1/2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "1 1/2 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "2 1/2 Cups"]
            recServings[.grain] = [ServingSize.quantity: "3oz"]
            recServings[.protein] = [ServingSize.quantity: "2oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 1400"]
        case (.m1800):
            recServings[.fruit] = [ServingSize.quantity: "1 1/2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "2 1/2 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "3 Cups"]
            recServings[.grain] = [ServingSize.quantity: "6oz"]
            recServings[.protein] = [ServingSize.quantity: "5oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 1800"]
        case (.m2400):
            recServings[.fruit] = [ServingSize.quantity: "2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "3 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "3 Cups"]
            recServings[.grain] = [ServingSize.quantity: "8oz"]
            recServings[.protein] = [ServingSize.quantity: "6 1/2 oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 2400"]
        case (.m2800):
            recServings[.fruit] = [ServingSize.quantity: "2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "3 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "3 Cups"]
            recServings[.grain] = [ServingSize.quantity: "8oz"]
            recServings[.protein] = [ServingSize.quantity: "6 1/2 oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 2800"]
        case (.m2200):
            recServings[.fruit] = [ServingSize.quantity: "2 Cups"]
            recServings[.vegetables] = [ServingSize.quantity: "2 1/2 Cups"]
            recServings[.dairy] = [ServingSize.quantity: "3 Cups"]
            recServings[.grain] = [ServingSize.quantity: "6oz"]
            recServings[.protein] = [ServingSize.quantity: "5 1/2 oz"]
            recServings[.calorie] = [ServingSize.calories: "Calorie Intake: 2200"]
        }
        
        return recServings
    }
}
