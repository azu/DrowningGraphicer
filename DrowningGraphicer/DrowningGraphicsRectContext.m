//
// Created by azu on 2014/03/04.
//


#import "DrowningGraphicsRectContext.h"


@implementation DrowningGraphicsRectContext {

}
- (void)drawRect:(CGRect) rect color:(UIColor *) rectColor {
    [self drawStateBlock:^(CGContextRef context) {
        CGContextSetStrokeColorWithColor(context, rectColor.CGColor);
        CGContextAddRect(context, rect);
        CGContextStrokePath(context);
    }];
}

- (void)drawFilledRect:(CGRect) rect color:(UIColor *) rectColor {
    [self drawStateBlock:^(CGContextRef context) {
        CGContextSetFillColorWithColor(context, rectColor.CGColor);
        CGContextStrokePath(context);
        CGContextFillRect(context, rect);
    }];
}


@end