//
//  GradientView.swift
//  KGNGradientView
//
//  Created by David Keegan on 1/10/15.
//  Copyright (c) 2015 David Keegan. All rights reserved.
//

import UIKit

/// A view with a linear gradient.
public class GradientView: UIView {

    /// The top color of the gradient.
    public var topColor: UIColor? {
        didSet {
            self.setColors()
        }
    }

    /// The bottom color of the gradient.
    public var bottomColor: UIColor? {
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
        let layer = self.layer as! CAGradientLayer
        if let topColor = self.topColor {
            if let bottomColor = self.bottomColor {
                layer.colors = [topColor.CGColor, bottomColor.CGColor]
            }
        }
    }
    
}