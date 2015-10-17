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
    
    func testGradientView() {
        let view = GradientView()
        view.topColor = UIColor.redColor()
        view.bottomColor = UIColor.blueColor()
        let layer = view.layer as! CAGradientLayer
        XCTAssertEqual(layer.startPoint, CGPointMake(0.5, 0))
        XCTAssertEqual(layer.endPoint, CGPointMake(0.5, 1.0))
        XCTAssertEqual(view.topColor, UIColor(CGColor: (layer.colors?[0])! as! CGColor))
        XCTAssertEqual(view.bottomColor, UIColor(CGColor: (layer.colors?[1])! as! CGColor))
    }

    func testRadialGradientView() {
        let view = RadialGradientView()
        view.innerColor = UIColor.redColor()
        view.outerColor = UIColor.blueColor()
        let layer = view.layer as! RadialGradientLayer
        XCTAssertEqual(view.innerColor, layer.innerColor)
        XCTAssertEqual(view.outerColor, layer.outerColor)
    }
    
}
