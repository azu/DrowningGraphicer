//
// Created by azu on 2014/03/04.
//


#import "DrowningGraphicsArcContext.h"


@implementation DrowningGraphicsArcContext {

}
- (instancetype)initWithContextRef:(CGContextRef) contextRef {
    self = [super init];
    if (self == nil) {
        return nil;
    }

    self.contextRef = contextRef;

    return self;
}

+ (instancetype)drowningWithContextRef:(CGContextRef) contextRef {
    return [[self alloc] initWithContextRef:contextRef];
}


- (void)drawArc:(CGRect) rect radius:(CGFloat) aRadius color:(UIColor *) circleColor {
    CGFloat radius = floorf(MIN(MIN(aRadius, rect.size.height / 2), rect.size.width / 2));
    CGContextBeginPath(self.contextRef);
    CGContextMoveToPoint(self.contextRef, rect.origin.x, rect.origin.y + radius);
    CGContextAddLineToPoint(self.contextRef, rect.origin.x,
        rect.origin.y + rect.size.height - radius);
    CGFloat angle = (CGFloat)M_PI;
    CGFloat halfAngle = (CGFloat)(angle / 2);
    CGContextAddArc(self.contextRef, rect.origin.x + radius,
        rect.origin.y + rect.size.height - radius,
        radius, angle, halfAngle, 1);
    CGContextAddLineToPoint(self.contextRef, rect.origin.x + rect.size.width - radius,
        rect.origin.y + rect.size.height);
    CGContextAddArc(self.contextRef, rect.origin.x + rect.size.width - radius,
        rect.origin.y + rect.size.height - radius, radius, halfAngle, 0.0f, 1);
    CGContextAddLineToPoint(self.contextRef, rect.origin.x + rect.size.width,
        rect.origin.y + radius);
    CGContextAddArc(self.contextRef, rect.origin.x + rect.size.width - radius,
        rect.origin.y + radius,
        radius, 0.0f, -halfAngle, 1);
    CGContextAddLineToPoint(self.contextRef, rect.origin.x + radius, rect.origin.y);
    CGContextAddArc(self.contextRef, rect.origin.x + radius, rect.origin.y + radius, radius,
        -halfAngle, angle, 1);
    CGContextSetFillColorWithColor(self.contextRef, circleColor.CGColor);
    CGContextSetStrokeColorWithColor(self.contextRef, circleColor.CGColor);
    CGContextDrawPath(self.contextRef, kCGPathFillStroke);
}
@end