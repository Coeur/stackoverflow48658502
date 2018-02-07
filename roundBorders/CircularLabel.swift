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
        layer.shadowColor = UIColor.clear.cgColor
        clipsToBounds = true
    }
}
