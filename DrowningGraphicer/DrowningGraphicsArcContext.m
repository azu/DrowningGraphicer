//
// Created by azu on 2014/03/04.
//


#import "DrowningGraphicsArcContext.h"


@implementation DrowningGraphicsArcContext {

}
- (void)drawCirclePath:(CGPoint) centerPoint radius:(CGFloat) aRadius color:(UIColor *) circleColor {
    [self drawStateBlock:^(CGContextRef context) {
        CGContextSetStrokeColorWithColor(context, circleColor.CGColor);
        CGContextAddArc(context, centerPoint.x, centerPoint.y, aRadius, 0.0f,
            (CGFloat)(2.0f * M_PI), YES);
        CGContextStrokePath(context);
    }];
}

- (void)drawFilledCircle:(CGPoint) centerPoint radius:(CGFloat) aRadius color:(UIColor *) circleColor {
    [self drawStateBlock:^(CGContextRef context) {
        CGContextSetFillColorWithColor(context, circleColor.CGColor);
        CGContextAddArc(context, centerPoint.x, centerPoint.y, aRadius, 0.0f,
            (CGFloat)(2.0f * M_PI), YES);
        CGContextFillPath(context);
    }];
}

@end