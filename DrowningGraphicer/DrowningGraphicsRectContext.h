//
// Created by azu on 2014/03/04.
//


#import <Foundation/Foundation.h>
#import "_DrowningAncestor.h"


@interface DrowningGraphicsRectContext : _DrowningAncestor
- (void)drawRect:(CGRect) rect color:(UIColor *) rectColor;

- (void)drawFilledRect:(CGRect) rect color:(UIColor *) rectColor;
@end