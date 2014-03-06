//
// Created by azu on 2014/03/05.
//


#import "CanvasView.h"
#import "DrowningGraphicer.h"
#import "DrowningGraphicsLineContext.h"
#import "DrowningGraphicsArcContext.h"


@implementation CanvasView {

}

- (void)drawRect:(CGRect) rect {
    [super drawRect:rect];
    CGSize size = self.bounds.size;
    self.backgroundColor = [UIColor whiteColor];
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawContext:context size:size];
}

- (void)drawContext:(CGContextRef) context size:(CGSize) size {
    DrowningGraphicer *drowning = [DrowningGraphicer drowningWithContextRef:context];
    [drowning lineContext:^(DrowningGraphicsLineContext *lineContext) {
        NSUInteger count = 30;
        for (NSUInteger i = 0; i < count; i++) {
            CGFloat yPosition = (size.height / count) * i;
            [lineContext drawLine:CGPointMake(0, yPosition)
                         endPoint:CGPointMake(CGRectGetWidth(self.frame), yPosition)
                         lineColor:[UIColor blackColor]];
        }
    }];
    [drowning arcContext:^(DrowningGraphicsArcContext *arcContext) {
        [arcContext drawFilledCircle:CGPointMake(size.width / 2,
            size.height / 2) radius:5 color:[UIColor blueColor]];
    }];
}

@end