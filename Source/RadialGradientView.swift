//
//  RadialGradientView.swift
//  KGNGradientView
//
//  Created by David Keegan on 1/10/15.
//  Copyright (c) 2015 David Keegan. All rights reserved.
//

import UIKit

class RadialGradientLayer: CALayer {

    var topColor: UIColor? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    var bottomColor: UIColor? {
        didSet {
            self.setNeedsDisplay()
        }
    }

    override func drawInContext(context: CGContext) {
        guard let topColor = self.topColor else {
            return
        }
        guard let bottomColor = self.bottomColor else {
            return
        }

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors: CFArray = [topColor.CGColor, bottomColor.CGColor]
        let gradient = CGGradientCreateWithColors(colorSpace, colors, [0, 1])
        let radius = sqrt(pow(CGRectGetWidth(self.bounds), 2)+pow(CGRectGetHeight(self.bounds), 2))
        CGContextDrawRadialGradient(context, gradient, CGPointZero, 0, CGPointZero, radius, [])
    }
    
}

public class RadialGradientView: UIView {

    var topColor: UIColor? {
        didSet {
            let layer = self.layer as! RadialGradientLayer
            layer.topColor = topColor
        }
    }
    var bottomColor: UIColor? {
        didSet {
            let layer = self.layer as! RadialGradientLayer
            layer.bottomColor = bottomColor
        }
    }

    override public class func layerClass() -> AnyClass {
        return RadialGradientLayer.self
    }

}
