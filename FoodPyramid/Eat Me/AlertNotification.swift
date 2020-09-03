//
//  AlertNotification.swift
//  FoodPyramid
//
//  Created by Brianna Babcock on 9/2/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit
import UserNotifications

class AlertManager {
    static let alertManagerPreviouslyRequestedAuthorization: String = "alertManagerAlreadyRequestedAuthorization"
    
    static func requestAuthorizationIfNeeded(onViewController viewController: UIViewController) {
        performIfNotDetermined {
            showNotificationPrePrompt(onViewController: viewController, allowed: {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
                    
                    
                    print(granted, error as Any)
                }
            })
        }
    }
    
    static func performIfNotDetermined(completion: @escaping (() -> ())) {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            switch settings.authorizationStatus {
            case .notDetermined:
                completion()
            case .authorized, .provisional, .denied:
                break
            @unknown default:
                break
            }
        }
    }
    
    static func showNotificationPrePrompt(onViewController viewController: UIViewController,
                                          allowed: @escaping (() ->()),
                                          deniedOrPreviouslyRequested: (() -> ())? = nil) {
        let hasPreviouslyRequested = UserDefaults.standard.bool(forKey: alertManagerPreviouslyRequestedAuthorization)
        if !hasPreviouslyRequested {
            UserDefaults.standard.set(true, forKey: alertManagerPreviouslyRequestedAuthorization)
            
            let alertController = UIAlertController(title: "Allow Notifications",
                                                    message: "Can Eat Me send you reminders throughout the day to help you on your healthy eating journey?",
                                                    preferredStyle: .alert)
            
            alertController.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
                allowed()
            }))
            
            alertController.addAction(UIAlertAction(title: "No", style: .cancel, handler: { action in
                deniedOrPreviouslyRequested?()
            }))
            
            DispatchQueue.main.async {
                viewController.present(alertController, animated: true, completion: nil)
            }
        } else {
            deniedOrPreviouslyRequested?()
        }
    }
}
