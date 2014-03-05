//
// Created by azu on 2014/03/04.
//


#import "DrowningGraphicer.h"
#import "DrowningGraphicsLineContext.h"
#import "DrowningGraphicsArcContext.h"


@implementation DrowningGraphicer {

}

#pragma mark - helper
typedef void(^DrowningGraphicStateBlock)();

void DrowningGraphicStateContext(CGContextRef ctx, DrowningGraphicStateBlock actions) {
    CGContextSaveGState(ctx);
    actions();
    CGContextRestoreGState(ctx);
}

- (instancetype)initWithContextRef:(CGContextRef) contextRef {
    self = [super init];
    if (self == nil) {
        return nil;
    }

    self.contextRef = contextRef;

    return self;
}

+ (instancetype)drowningWithContextRef:(CGContextRef) contextRef {
    return [[self alloc] initWithContextRef:contextRef];
}

#pragma mark - public
- (void)drawStateBlock:(void (^)()) action {
    DrowningGraphicStateContext(self.contextRef, ^{
        action();
    });
}

- (void)lineContext:(void (^)(DrowningGraphicsLineContext *)) lineContext {
    DrowningGraphicsLineContext *drowningGraphicsLine = [DrowningGraphicsLineContext drowningWithContextRef:self.contextRef];
    [self drawStateBlock:^{
        lineContext(drowningGraphicsLine);
    }];
}

- (void)arcContext:(void (^)(DrowningGraphicsArcContext *)) arcContext {
    DrowningGraphicsArcContext *drowningGraphicsArcContext = [DrowningGraphicsArcContext drowningWithContextRef:self.contextRef];
    [self drawStateBlock:^{
        arcContext(drowningGraphicsArcContext);
    }];
}


@end