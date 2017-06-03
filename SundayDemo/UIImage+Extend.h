//
//  UIImage+Extend.h
//  SundayDemo
//
//  Created by MACHUNLEI on 2017/6/3.
//  Copyright © 2017年 MACHUNLEI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extend)
#pragma mark - 以下两个函数可以用来创建一个新的按照固定大小的图片。
- (UIImage *)imageWithImage:(UIImage *)image
               scaledToSize:(CGSize )newSize;
- (UIImage *)imageWithImage:(UIImage *)image
               resizeFactor:(CGFloat )scale;
@end
