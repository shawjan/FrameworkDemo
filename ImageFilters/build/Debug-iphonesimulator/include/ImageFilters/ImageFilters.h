//
//  ImageFilters.h
//  ImageFilters
//
//  Created by shawjan on 16/3/28.
//  Copyright © 2016年 shawjan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageFilters : NSObject

@property (nonatomic,readonly) UIImage *originalImage;

- (id)initWithImage:(UIImage *)image;
- (UIImage *)grayScaleImage;
- (UIImage *)oldImageWithIntensity:(CGFloat)level;

@end
