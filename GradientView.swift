//
//  GradientView.swift
//  KGNGradientView
//
//  Created by David Keegan on 1/10/15.
//  Copyright (c) 2015 David Keegan. All rights reserved.
//

import UIKit

class GradientView: UIView {

    var topColor: UIColor? {
        didSet {
            self.setColors()
        }
    }
    var bottomColor: UIColor? {
        didSet {
            self.setColors()
        }
    }

    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }

    override init() {
        super.init()
        self.setup()
    }

    override init(frame:CGRect) {
        super.init(frame:frame)
        self.setup()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
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
