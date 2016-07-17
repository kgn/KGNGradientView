//
//  RadialGradientView.swift
//  KGNGradientView
//
//  Created by David Keegan on 1/10/15.
//  Copyright (c) 2015 David Keegan. All rights reserved.
//

import UIKit

internal class RadialGradientLayer: CALayer {

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

    override func draw(in context: CGContext) {
        guard let innerColor = self.innerColor else {
            return
        }
        guard let outerColor = self.outerColor else {
            return
        }

        var point = CGPoint.zero
        point.x = self.bounds.width*(self.point?.x ?? 0.5)
        point.y = self.bounds.height*(self.point?.y ?? 0.5)

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors: CFArray = [innerColor.cgColor, outerColor.cgColor]
        let gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: [0, 1])
        let radius = min(self.bounds.width, self.bounds.height)
        context.drawRadialGradient(gradient!, startCenter: point, startRadius: 0, endCenter: point, endRadius: radius, options: .drawsAfterEndLocation)
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

            let startAlpha = self.gradient?.startColor?.cgColor.alpha
            let endAlpha = self.gradient?.endColor?.cgColor.alpha
            self.isOpaque = startAlpha == 1 && endAlpha == 1
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
