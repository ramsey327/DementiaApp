//
//  UITextField+Shake.swift
//  Dementia App
//
//  Created by Austin Ramsey on 4/24/19.
//  Copyright © 2019 Austin Ramsey. All rights reserved.
//

import UIKit
import Foundation

extension UITextField {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(animation, forKey: "position")
    }
}
