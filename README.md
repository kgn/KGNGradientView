# KGNGradientView

`KGNGradientView` is a collection `UIView` subclasses for linear and radial gradients.

[![iOS 8.0+](http://img.shields.io/badge/iOS-8.0%2B-blue.svg)]()
[![Xcode 7.1](http://img.shields.io/badge/Xcode-7.0-blue.svg)]()
[![Swift 2.0](http://img.shields.io/badge/Swift-2.0-blue.svg)]()
[![Release](https://img.shields.io/github/release/kgn/KGNGradientView.svg)](/releases)
[![Build Status](http://img.shields.io/badge/License-MIT-lightgrey.svg)](/LICENSE)

[![Build Status](https://travis-ci.org/kgn/KGNGradientView.svg)](https://travis-ci.org/kgn/KGNGradientView)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-Compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/KGNGradientView.svg)](https://cocoapods.org/pods/KGNGradientView)
[![CocoaPods Platforms](https://img.shields.io/cocoapods/p/KGNGradientView.svg)](https://cocoapods.org/pods/KGNGradientView)

[![Twitter](https://img.shields.io/badge/Twitter-@iamkgn-55ACEE.svg)](http://twitter.com/iamkgn)
[![Star](https://img.shields.io/github/followers/kgn.svg?style=social&label=Follow%20%40kgn)](https://github.com/kgn)
[![Star](https://img.shields.io/github/stars/kgn/KGNGradientView.svg?style=social&label=Star)](https://github.com/kgn/KGNGradientView)

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

### Gradient
`Gradient` is a struct that encapsulates the start and end colors of the gradient.

### VerticalGradientView
A `UIView` subclass that creates a view with a linear gradient.
``` Swift
let view = VerticalGradientView()
view.gradient = Gradient(startColor: UIColor.redColor(), endColor: UIColor.blueColor())
```

### RadialGradientView
A `UIView` subclass that creates a view with a radial gradient.
``` Swift
let view = RadialGradientView()
view.gradient = Gradient(startColor: UIColor.redColor(), endColor: UIColor.blueColor())
```

## Progress
- [X] Tests
- [X] Travis
- [X] Badges
- [X] Carthage
- [X] CocoaPods
- [X] Description
- [X] Documentation
