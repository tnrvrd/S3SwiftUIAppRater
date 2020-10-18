//
//  UIApplication+Extensions.swift
//  S3SwiftUIAppRater
//
//  Created by muhammed on 18/10/2020.
//  Copyright © 2020 S3soft. All rights reserved.
//

import Foundation

extension UIApplication {
    var currentScene: UIWindowScene? {
        connectedScenes
            .first { $0.activationState == .foregroundActive } as? UIWindowScene
    }
}
