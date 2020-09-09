//
//  UserDefaultsHelper.Swift
//  Eat Me
//
//  Created by Brianna Babcock on 9/9/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import Foundation

class Defaults {
    
    static var answers: [Answer]? {
        get {
            guard let data = UserDefaults.standard.data(forKey: #function) else { return nil }
            return try? JSONDecoder().decode([Answer].self, from: data)
        }
        set {
            let data = try? JSONEncoder().encode(newValue)
            UserDefaults.standard.set(data, forKey: #function)
        }
    }
    
    static var calories: Calories? {
        get {
            guard let data = UserDefaults.standard.data(forKey: #function) else { return nil }
            return try? JSONDecoder().decode(Calories.self, from: data)
        }
        set {
            let data = try? JSONEncoder().encode(newValue)
            UserDefaults.standard.set(data, forKey: #function)
        }
    }
    
}
