//
// Created by azu on 2014/03/04.
//


#import <Foundation/Foundation.h>
#import "_DrowningAncestor.h"

@class DrowningGraphicsLineContext;
@class DrowningGraphicsArcContext;
@class DrowningGraphicsRectContext;

@interface DrowningGraphicer : _DrowningAncestor

// draw line
- (void)lineContext:(void (^)(DrowningGraphicsLineContext *)) lineContext;

// draw arc
- (void)arcContext:(void (^)(DrowningGraphicsArcContext *)) arcContext;

// draw rec
- (void)rectContext:(void (^)(DrowningGraphicsRectContext *)) rectContext;
@end