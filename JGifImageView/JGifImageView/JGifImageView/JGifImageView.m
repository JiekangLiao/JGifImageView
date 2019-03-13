//
//  JGifImageView.m
//  JGifImageView
//
//  Created by 仟熙网络科技有限公司 on 2019/3/13.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "JGifImageView.h"

@implementation JGifImageView

-(instancetype)initWithFrame:(CGRect)frame imageNames:(NSMutableArray <NSString *>*)imageNames{
    if (self = [super initWithFrame:frame]) {
        self.images = [[NSMutableArray alloc]init];
        for (NSString *name in imageNames) {
            UIImage *image = [UIImage imageNamed:name];
            [_images addObject:image];
        }
        self.animationImages = _images;
        [self configurationAnimation];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame images:(NSMutableArray <UIImage *>*)images{
    if (self = [super initWithFrame:frame]) {
        self.images = images;
        self.animationImages = _images;
        [self configurationAnimation];
    }
    return self;
}

-(void)configurationAnimation{
    self.animationRepeatCount = 0;
    self.animationDuration = 0.15*_images.count;
    [self startAnimating];
}

+(NSMutableArray <UIImage *>*)breakGifWithData:(NSData *)data{
    CGImageSourceRef gifSource = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    size_t count = CGImageSourceGetCount(gifSource);
    NSMutableArray *images = [[NSMutableArray alloc]init];
    for (size_t i = 0; i<count; i++) {
        CGImageRef cgImage = CGImageSourceCreateImageAtIndex(gifSource, i, NULL);
        UIImage *img = [UIImage imageWithCGImage:cgImage];
        [images addObject:img];
    }
    return images;
}

+(NSMutableArray <UIImage *>*)breakGifWithName:(NSString *)gifName{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"gif"];
    NSData *data = [NSMutableData dataWithContentsOfFile:path];
    CGImageSourceRef gifSource = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    size_t count = CGImageSourceGetCount(gifSource);
    NSMutableArray *images = [[NSMutableArray alloc]init];
    for (size_t i = 0; i<count; i++) {
        CGImageRef cgImage = CGImageSourceCreateImageAtIndex(gifSource, i, NULL);
        UIImage *img = [UIImage imageWithCGImage:cgImage];
        [images addObject:img];
    }
    return images;
}

@end
