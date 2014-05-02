//
// Created by azu on 2014/03/06.
//


#import <Foundation/Foundation.h>


@interface _DrowningAncestor : NSObject
@property(nonatomic) CGContextRef contextRef;

+ (instancetype)drowningWithContextRef:(CGContextRef) contextRef;

/*
    CGContextState Util
    CGContextSaveGState -> action -> CGContextRestoreGState
*/
typedef void(^DrowningGraphicStateBlock)(CGContextRef context);

- (void)drawStateBlock:(DrowningGraphicStateBlock) action;
@end