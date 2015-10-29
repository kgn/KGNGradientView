//
//  Gradient.swift
//  KGNGradientView
//
//  Created by David Keegan on 10/28/15.
//  Copyright © 2015 David Keegan. All rights reserved.
//

import UIKit

/// A gradient struct
public struct Gradient {

    /// The start color of the gradient
    public var startColor: UIColor?

    // The end color of the gradient
    public var endColor: UIColor?

    /// Initialize a gradient struct without a start or end color
    public init () {
        // Nothing to initialize
    }

    /// Initialize a gradient struct with a start and end color
    public init (startColor: UIColor?, endColor: UIColor?) {
        self.startColor = startColor
        self.endColor = endColor
    }
}
