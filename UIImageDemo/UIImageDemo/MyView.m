//
//  MyView.m
//  UIImageDemo
//
//  Created by 新闻 on 16/3/1.
//  Copyright © 2016年 新闻. All rights reserved.
//

#import "MyView.h"

@implementation MyView

-(void)awakeFromNib{
    //必须设为clearColor
    self.backgroundColor = [UIColor clearColor];
}

- (void)drawRect:(CGRect)rect {

    UIImage *imageOne = [UIImage imageNamed:@"bubble_min"];
    UIImage *imageTwo = [UIImage imageNamed:@"goldengate"];
    
    [imageOne drawInRect:rect];
    [imageTwo drawInRect:CGRectInset(rect, 0.0f, 0.0f) blendMode:kCGBlendModeSourceIn alpha:1];
    
   
    //修改填充颜色
//    [[UIColor redColor]setFill];
//    UIRectFillUsingBlendMode(rect, kCGBlendModeSourceIn);
}


@end
