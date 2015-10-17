# KGNGradientView

`KGNGradientView` is a collection `UIView` subclasses for linear and radial gradients.

[![iOS 8.0+](http://img.shields.io/badge/iOS-8.0%2B-blue.svg)]()
[![Xcode 7.0](http://img.shields.io/badge/Xcode-7.0-blue.svg)]()
[![Swift 2.0](http://img.shields.io/badge/Swift-2.0-blue.svg)]()
[![Release](https://img.shields.io/github/release/kgn/KGNGradientView.svg)](/releases)
[![Build Status](http://img.shields.io/badge/License-MIT-lightgrey.svg)](/LICENSE)

[![Build Status](https://travis-ci.org/kgn/KGNGradientView.svg)](https://travis-ci.org/kgn/KGNGradientView)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-Compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/KGNGradientView.svg)](https://cocoapods.org/pods/KGNGradientView)
[![CocoaPods Platforms](https://img.shields.io/cocoapods/p/KGNGradientView.svg)](https://cocoapods.org/pods/KGNGradientView)

[![Twitter](https://img.shields.io/badge/Twitter-@iamkgn-55ACEE.svg)](http://twitter.com/iamkgn)

## Installing

### Carthage
```
github "kgn/KGNGradientView"
```

### CocoaPods
```
pod 'KGNGradientView'
```

## Examples

### GradientView
A `UIView` subclass that creates a view with a linear gradient.
``` Swift
let view = GradientView()
view.topColor = UIColor.redColor()
view.bottomColor = UIColor.blueColor()
```

### RadialGradientView
A `UIView` subclass that creates a view with a radial gradient.
``` Swift
let view = RadialGradientView()
view.innerColor = UIColor.redColor()
view.outerColor = UIColor.blueColor()
```

## TODO:
- [ ] Travis ([#4961](https://github.com/travis-ci/travis-ci/issues/4961)) ([#4962](https://github.com/travis-ci/travis-ci/issues/4962))
- [X] Badges
- [X] Tests
- [X] Carthage
- [X] CocoaPods
- [X] Description
- [X] Documentation
