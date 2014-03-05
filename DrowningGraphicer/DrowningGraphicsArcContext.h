//
// Created by azu on 2014/03/04.
//


#import <Foundation/Foundation.h>


@interface DrowningGraphicsArcContext : NSObject
@property(nonatomic) CGContextRef contextRef;
+ (instancetype)drowningWithContextRef:(CGContextRef) contextRef;

- (void)drawArc:(CGRect) rect radius:(CGFloat) aRadius color:(UIColor *) circleColor;
@end