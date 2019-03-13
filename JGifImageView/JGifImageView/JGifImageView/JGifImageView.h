//
//  JGifImageView.h
//  JGifImageView
//
//  Created by 仟熙网络科技有限公司 on 2019/3/13.
//  Copyright © 2019 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JGifImageView : UIImageView

@property (nonatomic, strong) NSMutableArray <UIImage *>*images;

-(instancetype)initWithFrame:(CGRect)frame imageNames:(NSMutableArray <NSString *>*)imageNames;

-(instancetype)initWithFrame:(CGRect)frame images:(NSMutableArray <UIImage *>*)images;

+(NSMutableArray <UIImage *>*)breakGifWithData:(NSData *)data;

+(NSMutableArray <UIImage *>*)breakGifWithName:(NSString *)gifName;

@end

NS_ASSUME_NONNULL_END
