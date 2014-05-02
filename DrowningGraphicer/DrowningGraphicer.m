//
// Created by azu on 2014/03/04.
//


#import "DrowningGraphicer.h"
#import "DrowningGraphicsLineContext.h"
#import "DrowningGraphicsArcContext.h"
#import "DrowningGraphicsRectContext.h"


@implementation DrowningGraphicer {

}
- (void)lineContext:(void (^)(DrowningGraphicsLineContext *)) lineContext {
    DrowningGraphicsLineContext *drowningGraphicsLine = [DrowningGraphicsLineContext drowningWithContextRef:self.contextRef];
    [self drawStateBlock:^(CGContextRef context) {
        lineContext(drowningGraphicsLine);
    }];
}

- (void)arcContext:(void (^)(DrowningGraphicsArcContext *)) arcContext {
    DrowningGraphicsArcContext *drowningGraphicsArcContext = [DrowningGraphicsArcContext drowningWithContextRef:self.contextRef];
    [self drawStateBlock:^(CGContextRef context) {
        arcContext(drowningGraphicsArcContext);
    }];
}

- (void)rectContext:(void (^)(DrowningGraphicsRectContext *)) rectContext {
    DrowningGraphicsRectContext *drowningWithContextRef = [DrowningGraphicsRectContext drowningWithContextRef:self.contextRef];
    [self drawStateBlock:^(CGContextRef context) {
        rectContext(drowningWithContextRef);
    }];
}


@end