//
//  KGNGradientViewTests.swift
//  KGNGradientViewTests
//
//  Created by David Keegan on 10/12/15.
//  Copyright © 2015 David Keegan. All rights reserved.
//

import XCTest
@testable import KGNGradientView

class KGNGradientViewTests: XCTestCase {

    func testVerticalGradientView() {
        let topColor = UIColor.redColor()
        let bottomColor = UIColor.blueColor()
        let view = VerticalGradientView()
        view.gradient = VerticalGradient(topColor: topColor, bottomColor: bottomColor)
        let layer = view.layer as! CAGradientLayer
        XCTAssertEqual(layer.startPoint, CGPointMake(0.5, 0))
        XCTAssertEqual(layer.endPoint, CGPointMake(0.5, 1.0))
        XCTAssertEqual(view.gradient?.topColor, UIColor(CGColor: (layer.colors?[0])! as! CGColor))
        XCTAssertEqual(view.gradient?.bottomColor, UIColor(CGColor: (layer.colors?[1])! as! CGColor))
    }

    func testRadialGradientView() {
        let innerColor = UIColor.redColor()
        let outerColor = UIColor.blueColor()
        let view = RadialGradientView()
        view.gradient = RadialGradient(innerColor: innerColor, outerColor: outerColor)
        let layer = view.layer as! RadialGradientLayer
        XCTAssertEqual(view.gradient?.innerColor, layer.innerColor)
        XCTAssertEqual(view.gradient?.outerColor, layer.outerColor)
    }
    
}
