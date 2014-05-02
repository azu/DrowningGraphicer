//
// Created by azu on 2014/03/06.
//


#import "_DrowningAncestor.h"


@implementation _DrowningAncestor {

}

void DrowningGraphicStateContext(CGContextRef ctx, DrowningGraphicStateBlock actions) {
    CGContextSaveGState(ctx);
    actions(ctx);
    CGContextRestoreGState(ctx);
}

- (instancetype)initWithContextRef:(CGContextRef) contextRef {
    self = [super init];
    if (self == nil) {
        return nil;
    }

    _contextRef = contextRef;

    return self;
}

+ (instancetype)drowningWithContextRef:(CGContextRef) contextRef {
    return [[self alloc] initWithContextRef:contextRef];
}

#pragma mark - public
- (void)drawStateBlock:(void (^)(CGContextRef)) action {
    DrowningGraphicStateContext(self.contextRef, ^(CGContextRef context) {
        action(context);
    });
}

@end