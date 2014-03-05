//
// Created by azu on 2014/03/04.
//


#import <Foundation/Foundation.h>
#import "DrowningGraphicer.h"


@interface DrowningGraphicsLineContext : NSObject
@property(nonatomic) CGContextRef contextRef;
+ (instancetype)drowningWithContextRef:(CGContextRef) contextRef;

- (void)drawLine:(CGPoint) startPoint endPoint:(CGPoint) endPoint lineColor:(UIColor *) lineColor;
@end