# DrowningGraphicer

![image](http://f.cl.ly/items/0B1x283o2t3U012N2G3r/37776682_201d92eaa8.jpg)

CoreGraphics wrapper library.

* Core concept is simple
* You don't have to pass CGContextRef as argument.

## Installation

``` sh
pod 'DrowningGraphicer', :git => 'https://github.com/azu/DrowningGraphicer.git'
```

## Usage

![flow](http://f.cl.ly/items/271X2z2e2K0o0h0D2l2e/DrowningGraphicer_flow.png)

``` objc
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
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT

## Photo

http://flic.kr/p/4kBG7
