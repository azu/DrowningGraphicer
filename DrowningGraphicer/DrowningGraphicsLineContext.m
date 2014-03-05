//
// Created by azu on 2014/03/04.
//


#import "DrowningGraphicsLineContext.h"


@implementation DrowningGraphicsLineContext {

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

- (void)drawLine:(CGPoint) startPoint endPoint:(CGPoint) endPoint lineColor:(UIColor *) lineColor {
    CGContextSetStrokeColorWithColor(self.contextRef, lineColor.CGColor);
    CGContextSetLineWidth(self.contextRef, 1.f);
    CGContextSetLineCap(self.contextRef, kCGLineCapRound);
    CGContextBeginPath(self.contextRef);
    CGContextMoveToPoint(self.contextRef, startPoint.x, startPoint.y);
    CGContextAddLineToPoint(self.contextRef, endPoint.x, endPoint.y);
    CGContextStrokePath(self.contextRef);
}
@end