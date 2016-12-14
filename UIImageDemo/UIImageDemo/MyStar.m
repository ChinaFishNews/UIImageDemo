//
//  MyStar.m
//  UIImageDemo
//
//  Created by 新闻 on 16/3/1.
//  Copyright © 2016年 新闻. All rights reserved.
//

#import "MyStar.h"

@interface MyStar()

@property (nonatomic, assign) CGFloat progress;

@end

@implementation MyStar

-(void)awakeFromNib{
    [super awakeFromNib];
    self.backgroundColor = [UIColor clearColor];
}

- (void)drawRect:(CGRect)rect {
    
    UIImage *imageStar = [UIImage imageNamed:@"star"];
    
    for (int i = 0; i < 5; ++i) {
        
        CGFloat Width = rect.size.width/5;
        [imageStar drawInRect:CGRectMake(i*Width, 0, Width, rect.size.height)];
    }
    
    [[UIColor lightGrayColor] setFill];
    UIRectFillUsingBlendMode(rect, kCGBlendModeSourceIn);
    
    [[UIColor redColor] setFill];
    CGRect rect1 = CGRectMake(0, 0, _progress, rect.size.height);
    UIRectFillUsingBlendMode(rect1, kCGBlendModeSourceIn);
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint point  = [touch locationInView:self];
    CGFloat X      = point.x;
    self.progress  = X;
    
    [self setNeedsDisplay];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint point  = [touch locationInView:self];
    CGFloat X      = point.x;
    self.progress  = X;
    
    [self setNeedsDisplay];
}

-(void)setProgress:(CGFloat)progress{
    
    _progress = progress;
    
    CGFloat starW =  self.frame.size.width/5;
    
    [self setNeedsDisplay];
    
    NSLog(@"当前的评价星级指数===%.1f分",self.progress/starW);
}


@end
