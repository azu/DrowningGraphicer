//
// Created by azu on 2014/03/04.
//


#import <Foundation/Foundation.h>
#import "DrowningAncestor.h"

@class DrowningGraphicsLineContext;
@class DrowningGraphicsArcContext;

@interface DrowningGraphicer : DrowningAncestor

// draw line
- (void)lineContext:(void (^)(DrowningGraphicsLineContext *)) lineContext;

// draw arc
- (void)arcContext:(void (^)(DrowningGraphicsArcContext *)) arcContext;
@end