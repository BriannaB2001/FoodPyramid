//
//  CupsEqualTo.swift
//  Eat Me
//
//  Created by Brianna Babcock on 9/15/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import Foundation

import Foundation

enum FoodGroupLabels: String, Codable {
    case amountLabel1
    case amountLabel2
    case amountLabel3
    case amountLabel4
    case amountLabel5
    case amountLabel6
    case labelAmount
    
    var string: String {
        return self.rawValue
    }
}

enum Amounts: String, Codable {
    case fruitAmount
    case vegetableAmount
    case dairyAmount
    case grainAmount
    case proteinAmount
    
    
    var string: String {
        return self.rawValue
    }
}

enum AmountMeasure: String, Codable {
    case quantity
}


struct Amount: Codable {
    var amounts: Amounts
    
    init(amounts: Amounts) {
        self.amounts = amounts
    }

var equalServingAmount: [FoodGroupLabels: [AmountMeasure: Any]] {
    var amountSize = [FoodGroupLabels: [AmountMeasure: Any]]()
    
    switch (amounts) {
    case (.fruitAmount):
        amountSize[.amountLabel1] = [AmountMeasure.quantity: "1 small Apple 🍎"]
        amountSize[.amountLabel2] = [AmountMeasure.quantity: "1 large Banana 🍌"]
        amountSize[.amountLabel3] = [AmountMeasure.quantity: "1 Large Orange 🍊"]
        amountSize[.amountLabel4] = [AmountMeasure.quantity: "1 Large Peach 🍑"]
        amountSize[.amountLabel5] = [AmountMeasure.quantity: "1 Medium Pear 🍐"]
        amountSize[.amountLabel6] = [AmountMeasure.quantity: "8 Strawberries 🍓"]
        amountSize[.labelAmount] = [AmountMeasure.quantity: "🥝 Whats Equal To 1 Cup of Fruit? 🥝"]
        
    case (.vegetableAmount):
        amountSize[.amountLabel1] = [AmountMeasure.quantity: "1 Large SweetPotato 🍠"]
         amountSize[.amountLabel2] = [AmountMeasure.quantity: "1 Ear Of Corn 🌽"]
         amountSize[.amountLabel3] = [AmountMeasure.quantity: "2 Celery Stalks 🥬"]
         amountSize[.amountLabel4] = [AmountMeasure.quantity: "3 Broccoli Spears 🥦"]
         amountSize[.amountLabel5] = [AmountMeasure.quantity: "2 Medium Carrots 🥕"]
         amountSize[.amountLabel6] = [AmountMeasure.quantity: "1 Large Tomato 🍅"]
         amountSize[.labelAmount] = [AmountMeasure.quantity: "🧄Whats Equal To 1 Cup of Vegetables?🧄"]
        
    case (.dairyAmount):
         amountSize[.amountLabel1] = [AmountMeasure.quantity: "8oz Yogurt 🍨"]
         amountSize[.amountLabel2] = [AmountMeasure.quantity: "Half-Pint of Milk 🥛"]
         amountSize[.amountLabel3] = [AmountMeasure.quantity: "1/3 Cup Shredded Cheese 🧀"]
         amountSize[.amountLabel4] = [AmountMeasure.quantity: "2/3 Cup Cottage Cheese 🧀"]
         amountSize[.amountLabel5] = [AmountMeasure.quantity: "1/2 Cup Evaporated Milk 🥛"]
         amountSize[.amountLabel6] = [AmountMeasure.quantity: "2oz American Cheese 🧀"]
         amountSize[.labelAmount] = [AmountMeasure.quantity: "🧈 Whats Equal To 1 Cup of Dairy? 🧈"]
        
    case (.grainAmount):
         amountSize[.amountLabel1] = [AmountMeasure.quantity: "1 Slice Of Bread 🍞"]
         amountSize[.amountLabel2] = [AmountMeasure.quantity: "1 Mini Bagel 🥯"]
         amountSize[.amountLabel3] = [AmountMeasure.quantity: "3 Cups Popcorn 🌽"]
         amountSize[.amountLabel4] = [AmountMeasure.quantity: "1/2 Cup Cooked Rice 🍚"]
         amountSize[.amountLabel5] = [AmountMeasure.quantity: "1/2 Cup Cooked Pasta 🍝"]
         amountSize[.amountLabel6] = [AmountMeasure.quantity: "7 Crackers 🥨"]
         amountSize[.labelAmount] = [AmountMeasure.quantity: "🥐 Whats Equal To 1 Cup of Grains? 🥐"]
        
    case (.proteinAmount):
        amountSize[.amountLabel1] = [AmountMeasure.quantity: "1 Egg 🥚"]
         amountSize[.amountLabel2] = [AmountMeasure.quantity: "1/2oz Nuts 🌰"]
         amountSize[.amountLabel3] = [AmountMeasure.quantity: "1/2oz Seeds 🥥"]
         amountSize[.amountLabel4] = [AmountMeasure.quantity: "1/4 Cups Beans 🍈"]
         amountSize[.amountLabel5] = [AmountMeasure.quantity: "2TBS Humus 🍵"]
         amountSize[.amountLabel6] = [AmountMeasure.quantity: "2TBS PeanutButter 🥜"]
         amountSize[.labelAmount] = [AmountMeasure.quantity: "🍗 Whats Equal To 1 Cup of Protein? 🍗"]
    }
    
    return amountSize
}
}
