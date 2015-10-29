//
//  VerticalGradientView.swift
//  KGNGradientView
//
//  Created by David Keegan on 1/10/15.
//  Copyright (c) 2015 David Keegan. All rights reserved.
//

import UIKit

public struct VerticalGradient {
    var topColor: UIColor?
    var bottomColor: UIColor?
}

/// A view with a linear gradient.
public class VerticalGradientView: UIView {

    /// The vertical gradient to display.
    public var gradient: VerticalGradient? {
        didSet {
            self.setColors()
        }
    }

    override public class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }

    init() {
        super.init(frame: CGRectZero)
        self.setup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    private func setup() {
        let layer = self.layer as! CAGradientLayer
        layer.startPoint = CGPointMake(0.5, 0)
        layer.endPoint = CGPointMake(0.5, 1)
    }

    private func setColors() {
        var colors: [CGColor] = []
        let layer = self.layer as! CAGradientLayer
        if let topColor = self.gradient?.topColor {
            colors.append(topColor.CGColor)
        }

        if let bottomColor = self.gradient?.bottomColor {
            colors.append(bottomColor.CGColor)
        }
        layer.colors = colors
    }
    
}