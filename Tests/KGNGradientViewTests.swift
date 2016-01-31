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
        let startColor = UIColor.redColor()
        let endColor = UIColor.blueColor()
        let view = VerticalGradientView()
        XCTAssertEqual(view.opaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! CAGradientLayer
        XCTAssertEqual(layer.startPoint, CGPointMake(0.5, 0))
        XCTAssertEqual(layer.endPoint, CGPointMake(0.5, 1.0))
        XCTAssertEqual(view.gradient?.startColor, UIColor(CGColor: (layer.colors?[0])! as! CGColor))
        XCTAssertEqual(view.gradient?.endColor, UIColor(CGColor: (layer.colors?[1])! as! CGColor))
        XCTAssertEqual(view.opaque, true)
    }

    func testVerticalGradientViewStartAlpha() {
        let startColor = UIColor.redColor().colorWithAlphaComponent(0.5)
        let endColor = UIColor.blueColor()
        let view = VerticalGradientView()
        XCTAssertEqual(view.opaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! CAGradientLayer
        XCTAssertEqual(layer.startPoint, CGPointMake(0.5, 0))
        XCTAssertEqual(layer.endPoint, CGPointMake(0.5, 1.0))
        XCTAssertEqual(view.gradient?.startColor, UIColor(CGColor: (layer.colors?[0])! as! CGColor))
        XCTAssertEqual(view.gradient?.endColor, UIColor(CGColor: (layer.colors?[1])! as! CGColor))
        XCTAssertEqual(view.opaque, false)
    }

    func testVerticalGradientViewEndAlpha() {
        let startColor = UIColor.redColor()
        let endColor = UIColor.blueColor().colorWithAlphaComponent(0.5)
        let view = VerticalGradientView()
        XCTAssertEqual(view.opaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! CAGradientLayer
        XCTAssertEqual(layer.startPoint, CGPointMake(0.5, 0))
        XCTAssertEqual(layer.endPoint, CGPointMake(0.5, 1.0))
        XCTAssertEqual(view.gradient?.startColor, UIColor(CGColor: (layer.colors?[0])! as! CGColor))
        XCTAssertEqual(view.gradient?.endColor, UIColor(CGColor: (layer.colors?[1])! as! CGColor))
        XCTAssertEqual(view.opaque, false)
    }

    func testRadialGradientView() {
        let startColor = UIColor.redColor()
        let endColor = UIColor.blueColor()
        let view = RadialGradientView()
        XCTAssertEqual(view.opaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! RadialGradientLayer
        XCTAssertEqual(view.gradient?.startColor, layer.innerColor)
        XCTAssertEqual(view.gradient?.endColor, layer.outerColor)
        XCTAssertEqual(view.opaque, true)
    }

    func testRadialGradientViewStartAlpha() {
        let startColor = UIColor.redColor().colorWithAlphaComponent(0.5)
        let endColor = UIColor.blueColor()
        let view = RadialGradientView()
        XCTAssertEqual(view.opaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! RadialGradientLayer
        XCTAssertEqual(view.gradient?.startColor, layer.innerColor)
        XCTAssertEqual(view.gradient?.endColor, layer.outerColor)
        XCTAssertEqual(view.opaque, false)
    }

    func testRadialGradientViewEndAlpha() {
        let startColor = UIColor.redColor()
        let endColor = UIColor.blueColor().colorWithAlphaComponent(0.5)
        let view = RadialGradientView()
        XCTAssertEqual(view.opaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! RadialGradientLayer
        XCTAssertEqual(view.gradient?.startColor, layer.innerColor)
        XCTAssertEqual(view.gradient?.endColor, layer.outerColor)
        XCTAssertEqual(view.opaque, false)
    }

}
