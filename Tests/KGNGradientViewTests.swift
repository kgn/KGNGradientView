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
        let startColor = UIColor.red()
        let endColor = UIColor.blue()
        let view = VerticalGradientView()
        XCTAssertEqual(view.isOpaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! CAGradientLayer
        XCTAssertEqual(layer.startPoint, CGPoint(x: 0.5, y: 0))
        XCTAssertEqual(layer.endPoint, CGPoint(x: 0.5, y: 1.0))
        XCTAssertEqual(view.gradient?.startColor, UIColor(cgColor: (layer.colors?[0])! as! CGColor))
        XCTAssertEqual(view.gradient?.endColor, UIColor(cgColor: (layer.colors?[1])! as! CGColor))
        XCTAssertEqual(view.isOpaque, true)
    }

    func testVerticalGradientViewStartAlpha() {
        let startColor = UIColor.red().withAlphaComponent(0.5)
        let endColor = UIColor.blue()
        let view = VerticalGradientView()
        XCTAssertEqual(view.isOpaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! CAGradientLayer
        XCTAssertEqual(layer.startPoint, CGPoint(x: 0.5, y: 0))
        XCTAssertEqual(layer.endPoint, CGPoint(x: 0.5, y: 1.0))
        XCTAssertEqual(view.gradient?.startColor, UIColor(cgColor: (layer.colors?[0])! as! CGColor))
        XCTAssertEqual(view.gradient?.endColor, UIColor(cgColor: (layer.colors?[1])! as! CGColor))
        XCTAssertEqual(view.isOpaque, false)
    }

    func testVerticalGradientViewEndAlpha() {
        let startColor = UIColor.red()
        let endColor = UIColor.blue().withAlphaComponent(0.5)
        let view = VerticalGradientView()
        XCTAssertEqual(view.isOpaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! CAGradientLayer
        XCTAssertEqual(layer.startPoint, CGPoint(x: 0.5, y: 0))
        XCTAssertEqual(layer.endPoint, CGPoint(x: 0.5, y: 1.0))
        XCTAssertEqual(view.gradient?.startColor, UIColor(cgColor: (layer.colors?[0])! as! CGColor))
        XCTAssertEqual(view.gradient?.endColor, UIColor(cgColor: (layer.colors?[1])! as! CGColor))
        XCTAssertEqual(view.isOpaque, false)
    }

    func testRadialGradientView() {
        let startColor = UIColor.red()
        let endColor = UIColor.blue()
        let view = RadialGradientView()
        XCTAssertEqual(view.isOpaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! RadialGradientLayer
        XCTAssertEqual(view.gradient?.startColor, layer.innerColor)
        XCTAssertEqual(view.gradient?.endColor, layer.outerColor)
        XCTAssertEqual(view.isOpaque, true)
    }

    func testRadialGradientViewStartAlpha() {
        let startColor = UIColor.red().withAlphaComponent(0.5)
        let endColor = UIColor.blue()
        let view = RadialGradientView()
        XCTAssertEqual(view.isOpaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! RadialGradientLayer
        XCTAssertEqual(view.gradient?.startColor, layer.innerColor)
        XCTAssertEqual(view.gradient?.endColor, layer.outerColor)
        XCTAssertEqual(view.isOpaque, false)
    }

    func testRadialGradientViewEndAlpha() {
        let startColor = UIColor.red()
        let endColor = UIColor.blue().withAlphaComponent(0.5)
        let view = RadialGradientView()
        XCTAssertEqual(view.isOpaque, true)
        view.gradient = Gradient(startColor: startColor, endColor: endColor)
        let layer = view.layer as! RadialGradientLayer
        XCTAssertEqual(view.gradient?.startColor, layer.innerColor)
        XCTAssertEqual(view.gradient?.endColor, layer.outerColor)
        XCTAssertEqual(view.isOpaque, false)
    }

}
