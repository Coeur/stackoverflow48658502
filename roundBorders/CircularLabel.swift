//
//  CircularLabel.swift
//
//  Created by Antoine Cœur on 07/02/2018.
//

import Foundation
import UIKit

/// Circular background with white border
class CircularLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = frame.size.height / 2
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 5
        layer.masksToBounds = true
    }
}

/// Circular background with white border (fixed)
class FixedCircularLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = frame.size.height / 2
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 5
        layer.masksToBounds = true
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        // workaround incomplete borders: https://stackoverflow.com/a/48663935/1033581
        UIColor(cgColor: layer.borderColor!).setStroke()
        let path = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius)
        path.lineWidth = 1
        path.stroke()
    }
}
