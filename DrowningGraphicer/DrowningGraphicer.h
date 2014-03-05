//
// Created by azu on 2014/03/04.
//


#import <Foundation/Foundation.h>

@class DrowningGraphicsLineContext;
@class DrowningGraphicsArcContext;

@interface DrowningGraphicer : NSObject
@property(nonatomic) CGContextRef contextRef;

+ (instancetype)drowningWithContextRef:(CGContextRef) contextRef;

/*
    CGContextState Util
    CGContextSaveGState -> action -> CGContextRestoreGState
*/
- (void)drawStateBlock:(void (^)()) action;
// draw line
- (void)lineContext:(void (^)(DrowningGraphicsLineContext *)) lineContext;

// draw arc
- (void)arcContext:(void (^)(DrowningGraphicsArcContext *)) arcContext;
@end