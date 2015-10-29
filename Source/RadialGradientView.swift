//
//  RadialGradientView.swift
//  KGNGradientView
//
//  Created by David Keegan on 1/10/15.
//  Copyright (c) 2015 David Keegan. All rights reserved.
//

import UIKit

class RadialGradientLayer: CALayer {

    var innerColor: UIColor? {
        didSet {
            self.setNeedsDisplay()
        }
    }

    var outerColor: UIColor? {
        didSet {
            self.setNeedsDisplay()
        }
    }

    override func drawInContext(context: CGContext) {
        guard let innerColor = self.innerColor else {
            return
        }
        guard let outerColor = self.outerColor else {
            return
        }

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors: CFArray = [innerColor.CGColor, outerColor.CGColor]
        let gradient = CGGradientCreateWithColors(colorSpace, colors, [0, 1])
        let radius = sqrt(pow(CGRectGetWidth(self.bounds), 2)+pow(CGRectGetHeight(self.bounds), 2))
        CGContextDrawRadialGradient(context, gradient, CGPointZero, 0, CGPointZero, radius, [])
    }
    
}

/// A view with a radial gradient.
public class RadialGradientView: UIView {

    /// The radial gradient to display.
    public var gradient: Gradient? {
        didSet {
            let layer = self.layer as! RadialGradientLayer
            layer.innerColor = self.gradient?.startColor
            layer.outerColor = self.gradient?.endColor
        }
    }

    override public class func layerClass() -> AnyClass {
        return RadialGradientLayer.self
    }

}
