//
//  KGNGradientView.m
//  KGNGradientView
//
//  Created by David Keegan on 2/27/14.
//  Copyright (c) 2014 David Keegan. All rights reserved.
//

#import "KGNGradientView.h"

@implementation KGNGradientView

+ (Class)layerClass{
    return [CAGradientLayer class];
}

- (instancetype)init{
    if(!(self = [super init])){
        return nil;
    }

    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    layer.startPoint = CGPointMake(0.5, 0);
    layer.endPoint = CGPointMake(0.5, 1);

    return self;
}

- (void)setTopColor:(UIColor *)topColor{
    if(_topColor == topColor){
        return;
    }
    _topColor = topColor;

    if(self.topColor && self.bottomColor){
        CAGradientLayer *layer = (CAGradientLayer *)self.layer;
        layer.colors = @[(id)[self.topColor CGColor], (id)[self.bottomColor CGColor]];
    }
}

- (void)setBottomColor:(UIColor *)bottomColor{
    if(_bottomColor == bottomColor){
        return;
    }
    _bottomColor = bottomColor;

    if(self.topColor && self.bottomColor){
        CAGradientLayer *layer = (CAGradientLayer *)self.layer;
        layer.colors = @[(id)[self.topColor CGColor], (id)[self.bottomColor CGColor]];
    }
}

@end
