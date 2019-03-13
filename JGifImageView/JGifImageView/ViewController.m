//
//  ViewController.m
//  JGifImageView
//
//  Created by 仟熙网络科技有限公司 on 2019/3/12.
//  Copyright © 2019 Jack. All rights reserved.
//

#import "ViewController.h"
#import "JGifImageView/JGifImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    JGifImageView *jGifImageView = [[JGifImageView alloc]initWithFrame:CGRectMake(100, 200, 80, 80) images:[JGifImageView breakGifWithName:@"1"]];
    [self.view addSubview:jGifImageView];
}


@end
