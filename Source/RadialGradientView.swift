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

    var startPoint: CGPoint? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    var endPoint: CGPoint? {
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

        let p1 = CGPoint(
            x: self.startPoint?.x ?? 0.5,
            y: self.startPoint?.y ?? 0.5
        )
        let p2 = CGPoint(
            x: self.endPoint?.x ?? p1.x,
            y: self.endPoint?.y ?? p1.y
        )
        
        let viewPoint1 = CGPoint(
            x: self.bounds.width*p1.x,
            y: self.bounds.height*p1.y
        )
        let viewPoint2 = CGPoint(
            x: self.bounds.width*p2.x,
            y: self.bounds.height*p2.y
        )
        
        let radius = max(
            abs(viewPoint1.x-viewPoint2.x),
            abs(viewPoint1.y-viewPoint2.y)
        )
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors = [innerColor.cgColor, outerColor.cgColor] as CFArray
        let gradient = CGGradient(colorsSpace: colorSpace, colors: colors, locations: [0, 1])
        context.drawRadialGradient(gradient!, startCenter: viewPoint1, startRadius: 0, endCenter: viewPoint1, endRadius: radius, options: .drawsAfterEndLocation)
    }
    
}

/// A view with a radial gradient.
open class RadialGradientView: UIView {

    /// The radial gradient to display.
    open var gradient: Gradient? {
        didSet {
            let layer = self.layer as! RadialGradientLayer
            layer.innerColor = self.gradient?.startColor
            layer.outerColor = self.gradient?.endColor

            let startAlpha = self.gradient?.startColor?.cgColor.alpha
            let endAlpha = self.gradient?.endColor?.cgColor.alpha
            self.isOpaque = startAlpha == 1 && endAlpha == 1
        }
    }

    /// The start point of the radial gradient.
    /// Range from 0 to 1, defaults to 0.5(center).
    open var startPoint: CGPoint? {
        didSet {
            let layer = self.layer as! RadialGradientLayer
            layer.startPoint = startPoint
        }
    }
    
    /// The end point of the radial gradient.
    /// Range from 0 to 1, defaults to 0.5(center).
    open var endPoint: CGPoint? {
        didSet {
            let layer = self.layer as! RadialGradientLayer
            layer.endPoint = endPoint
        }
    }

    open override static var layerClass: AnyClass {
        return RadialGradientLayer.self
    }

}
