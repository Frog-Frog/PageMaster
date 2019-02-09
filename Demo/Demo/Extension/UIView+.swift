//
//  UIView+.swift
//  Demo
//
//  Created by Tomosuke Okada on 2019/02/09.
//  Copyright © 2019 TomosukeOkada. All rights reserved.
//

import UIKit

// MARK: - xib
extension UIView {
    
    func fitToSelf(childView: UIView) {
        childView.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["childView": childView]
        self.addConstraints(
            NSLayoutConstraint.constraints(
                withVisualFormat : "H:|[childView]|",
                options          : [],
                metrics          : nil,
                views            : bindings
        ))
        self.addConstraints(
            NSLayoutConstraint.constraints(
                withVisualFormat : "V:|[childView]|",
                options          : [],
                metrics          : nil,
                views            : bindings
        ))
    }
}
