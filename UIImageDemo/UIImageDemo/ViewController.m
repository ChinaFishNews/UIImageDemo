//
//  ViewController.m
//  UIImageDemo
//
//  Created by 新闻 on 16/3/1.
//  Copyright © 2016年 新闻. All rights reserved.
//

#import "ViewController.h"
#import "UIImageFactory.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


//    self.imageView.image =  [UIImageFactory imageWithColor:[UIColor cyanColor]
//                                                  withSize:self.imageView.frame.size];
    
//    self.imageView.image = [UIImageFactory circualImage:[UIImage imageNamed:@"news"]
//                                           withDiameter:self.imageView.frame.size.width];
    
//    self.imageView.image = [UIImageFactory
//                            circualarImage:nil
//                            withDiameter:200
//                            highlightedColor:[UIColor cyanColor]];


//    self.imageView.image = [UIImageFactory addTextInImage:[UIImage imageNamed:@"news"]
//                                                     text:@"含笑饮砒霜"
//                                                textColor:[UIColor cyanColor]
//                                                     font:[UIFont systemFontOfSize:17]];
    
    
//   UIImage *image = [UIImageFactory imageWithText:@"含笑饮砒霜"
//                                         backgroundColor:[UIColor cyanColor]
//                                               textColor:[UIColor whiteColor]
//                                                    font:[UIFont systemFontOfSize:17]
//                                                    size:self.imageView.frame.size];
//    
//    self.imageView.image = [UIImageFactory circualImage:image withDiameter:image.size.width];
    
    
//    UIImage *imageOne = [UIImage imageNamed:@"goldengate"];
//    UIImage *imageTwo = [UIImage imageNamed:@"bubble_min"];
//    self.imageView.image = imageOne;
//    [UIImageFactory maskView:self.imageView withImage:imageTwo];

    
    UIImage *imageOne     = [UIImage imageNamed:@"goldengate"];
    UIImage *imageTwo     = [UIImage imageNamed:@"bubble_min"];
    self.imageView.image  = imageOne;

    UIImage *flippedImage = [UIImageFactory horizontallyFlippedImageFromImage:imageTwo];
    [UIImageFactory maskView:self.imageView withImage:[flippedImage stretchableImageWithLeftCapWidth:flippedImage.size.width/2 topCapHeight:flippedImage.size.height/2]];
 
//    self.imageView.image = [UIImageFactory imageColorChanged:[UIImage imageNamed:@"news"]
//                                                   tintColor:[UIColor purpleColor]
//                                                   blendMode:kCGBlendModeOverlay];
    
}

@end
