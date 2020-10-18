//
//  S3SwiftUIAppRater.swift
//  S3SwiftUIAppRater
//
//  Created by muhammed on 3.07.2020.
//  Copyright © 2020 S3soft. All rights reserved.
//

import Foundation
import StoreKit

public struct S3SwiftUIAppRater {
    
    public static var usesUntilPrompt = 5
    
    enum defaults : String {
        case numberOfTimesLaunched = "S3_numberOfTimesLaunched"
    }
    
    public static func launch() {
        var requestReview: Bool = false
        
        incrementNumberOfTimesLaunched()
        
        let numberOfTimesLaunched: Int = UserDefaults.standard.integer(forKey: defaults.numberOfTimesLaunched.rawValue)
        
        if numberOfTimesLaunched >= usesUntilPrompt {
            UserDefaults.standard.set(0, forKey: defaults.numberOfTimesLaunched.rawValue)
            requestReview = true
        }
        
        if requestReview {
            if #available(iOS 14.0, *) {
                if let scene = UIApplication.shared.currentScene {
                    SKStoreReviewController.requestReview(in: scene)
                }
            } else {
                SKStoreReviewController.requestReview()
            }
        }
    }
    
    private static func incrementNumberOfTimesLaunched() {
        let numberOfTimesLaunched: Int = UserDefaults.standard.integer(forKey: defaults.numberOfTimesLaunched.rawValue) + 1
        UserDefaults.standard.set(numberOfTimesLaunched, forKey: defaults.numberOfTimesLaunched.rawValue)
    }
    
}
