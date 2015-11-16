//
//  RadialGradientView.swift
//  KGNGradientView
//
//  Created by David Keegan on 1/10/15.
//  Copyright (c) 2015 David Keegan. All rights reserved.
//

import UIKit

private class RadialGradientLayer: CALayer {

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

    var point: CGPoint? {
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

        var point = CGPointZero
        point.x = CGRectGetWidth(self.bounds)*(self.point?.x ?? 0.5)
        point.x = CGRectGetHeight(self.bounds)*(self.point?.y ?? 0.5)

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors: CFArray = [innerColor.CGColor, outerColor.CGColor]
        let gradient = CGGradientCreateWithColors(colorSpace, colors, [0, 1])
        let radius = min(CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))
        CGContextDrawRadialGradient(context, gradient, point, 0, point, radius, [])
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

    /// The origin point of the radial gradient.
    /// Range from 0 to 1, defaults to 0.5(center).
    public var point: CGPoint? {
        didSet {
            let layer = self.layer as! RadialGradientLayer
            layer.point = point
        }
    }

    override public class func layerClass() -> AnyClass {
        return RadialGradientLayer.self
    }

}
