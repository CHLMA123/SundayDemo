//
//  UIImage+Extend.m
//  SundayDemo
//
//  Created by MACHUNLEI on 2017/6/3.
//  Copyright © 2017年 MACHUNLEI. All rights reserved.
//

#import "UIImage+Extend.h"

@implementation UIImage (Extend)
#pragma mark - 
// 简单来说，就是Core Graphics来创建一个bitmap，然后生成一个图片。
- (UIImage*)imageWithImage:(UIImage*)image
              scaledToSize:(CGSize)newSize
{
    UIGraphicsBeginImageContext( newSize );
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

-(UIImage*)imageWithImage:(UIImage *)image
             resizeFactor:(CGFloat)scale
{
    CGSize originalSize = image.size;
    CGSize newSize = CGSizeMake(originalSize.width * scale, originalSize.height* scale);
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0,0,newSize.width, newSize.height)];
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
@end
