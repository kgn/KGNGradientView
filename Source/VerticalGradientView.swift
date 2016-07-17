//
//  VerticalGradientView.swift
//  KGNGradientView
//
//  Created by David Keegan on 1/10/15.
//  Copyright (c) 2015 David Keegan. All rights reserved.
//

import UIKit

/// A view with a linear gradient.
public class VerticalGradientView: UIView {

    /// The vertical gradient to display.
    public var gradient: Gradient? {
        didSet {
            self.setColors()
        }
    }

    override public class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    private func setup() {
        let layer = self.layer as! CAGradientLayer
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
    }

    private func setColors() {
        self.isOpaque = true
        var colors: [CGColor] = []
        let layer = self.layer as! CAGradientLayer
        if let topColor = self.gradient?.startColor {
            colors.append(topColor.cgColor)
            if topColor.cgColor.alpha < 1 {
                self.isOpaque = false
            }
        }
        if let bottomColor = self.gradient?.endColor {
            colors.append(bottomColor.cgColor)
            if bottomColor.cgColor.alpha < 1 {
                self.isOpaque = false
            }
        }
        layer.colors = colors
    }
    
}
