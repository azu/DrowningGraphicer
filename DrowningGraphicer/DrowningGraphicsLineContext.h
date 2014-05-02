//
// Created by azu on 2014/03/04.
//


#import <Foundation/Foundation.h>
#import "DrowningGraphicer.h"


@interface DrowningGraphicsLineContext : _DrowningAncestor
- (void)drawLine:(CGPoint) startPoint endPoint:(CGPoint) endPoint lineColor:(UIColor *) lineColor;
@end