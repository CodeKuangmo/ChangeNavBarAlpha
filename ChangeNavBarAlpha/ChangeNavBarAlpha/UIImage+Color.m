//
//  UIImage+Color.m
//  ChangeNavigationAlpha
//
//  Created by tyx on 15-9-27.
//  Copyright (c) 2015年 tyx. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

//
//extension UIImage {
//    
//    static func imageWithColor(color: UIColor) -> UIImage {
//        
//        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
//        UIGraphicsBeginImageContext(rect.size)
//        let context = UIGraphicsGetCurrentContext()
//        CGContextSetFillColorWithColor(context, color.CGColor)
//        CGContextFillRect(context, rect)
//        
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        
//        return image
//    }
//    
//}

+(UIImage *)imageWithColor:(UIColor *)color{
    CGRect rect= CGRectMake(0,0,1,1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
