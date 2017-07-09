//
//  UIImage+Extend.h
//  SundayDemo
//
//  Created by MACHUNLEI on 2017/6/3.
//  Copyright © 2017年 MACHUNLEI. All rights reserved.
//

/*
 两种初始化方式
 
 1、[UIImage imageNamed:]适合UI界面中反复使用的贴图，因为会保存在cache中，所以速度会有保障。但是对使用次数较少，图片较大时候，不应这样采用，因为会占用大量的cache。
 
 2、[UIImageimageWithContentsOfFile:]直接从文件中读取图片，保存在内存中，引用计数为0后会进行释放。比较适用于大图片和使用次数较少的图片。
 
 推荐使用后者加载图片
 */

#import <UIKit/UIKit.h>

@interface UIImage (Extend)
#pragma mark - 以下两个函数可以用来创建一个新的按照固定大小的图片。
- (UIImage *)imageWithImage:(UIImage *)image
               scaledToSize:(CGSize )newSize;
- (UIImage *)imageWithImage:(UIImage *)image
               resizeFactor:(CGFloat )scale;
@end
