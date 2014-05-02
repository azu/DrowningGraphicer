//
// Created by azu on 2014/03/04.
//


#import <Foundation/Foundation.h>
#import "_DrowningAncestor.h"


@interface DrowningGraphicsArcContext : _DrowningAncestor
- (void)drawCirclePath:(CGPoint) centerPoint radius:(CGFloat) aRadius color:(UIColor *) circleColor;

- (void)drawFilledCircle:(CGPoint) centerPoint radius:(CGFloat) aRadius color:(UIColor *) circleColor;

@end