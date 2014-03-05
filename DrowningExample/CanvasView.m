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
    [drowning lineContext:^(DrowningGraphicsLineContext *line) {
        NSUInteger count = 30;
        for (NSUInteger i = 0; i < count; i++) {
            CGFloat yPosition = (size.height / count) * i;
            [line drawLine:CGPointMake(0, yPosition)
                  endPoint:CGPointMake(CGRectGetWidth(self.frame), yPosition)
                  lineColor:[UIColor blackColor]];
        }
    }];
    [drowning arcContext:^(DrowningGraphicsArcContext *arcContext) {
        CGSize arcSize = CGSizeMake(10, 10);
        CGRect arcRect = CGRectMake(
            (size.width - arcSize.width) / 2,
            (size.height - arcSize.height) / 2, 10, 10);
        [arcContext drawArc:arcRect radius:10 color:[UIColor orangeColor]];
    }];
}

@end