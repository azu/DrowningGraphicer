//
// Created by azu on 2014/03/04.
//


#import "DrowningGraphicsLineContext.h"


@implementation DrowningGraphicsLineContext {

}
- (void)drawLine:(CGPoint) startPoint endPoint:(CGPoint) endPoint lineColor:(UIColor *) lineColor {
    [self drawStateBlock:^(CGContextRef context) {
        CGContextSetStrokeColorWithColor(context, lineColor.CGColor);
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, startPoint.x, startPoint.y);
        CGContextAddLineToPoint(context, endPoint.x, endPoint.y);
        CGContextStrokePath(context);
    }];
}
@end