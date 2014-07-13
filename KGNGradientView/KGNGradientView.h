//
//  KGNGradientView.h
//  KGNGradientView
//
//  Created by David Keegan on 2/27/14.
//  Copyright (c) 2014 David Keegan. All rights reserved.
//

@interface KGNGradient : NSObject
@property (strong, nonatomic) UIColor *topColor;
@property (strong, nonatomic) UIColor *bottomColor;
@end

@interface KGNGradientView : UIView

@property (strong, nonatomic) UIColor *topColor;
@property (strong, nonatomic) UIColor *bottomColor;

+ (instancetype)viewWithGradient:(KGNGradient *)gradient;
- (void)setGradient:(KGNGradient *)gradient;

@end
