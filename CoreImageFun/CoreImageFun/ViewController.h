//
//  ViewController.h
//  CoreImageFun
//
//  Created by shawjan on 16/3/29.
//  Copyright © 2016年 shawjan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UISlider *amountSlider;

- (IBAction)amountSliderValueChanged:(UISlider *)sender;
- (IBAction)loadPhoto:(id)sender;
- (IBAction)savePhoto:(id)sender;

@end

