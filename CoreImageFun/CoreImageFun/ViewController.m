//
//  ViewController.m
//  CoreImageFun
//
//  Created by shawjan on 16/3/29.
//  Copyright © 2016年 shawjan. All rights reserved.
//

#import "ViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import "ImageFilters/ImageFilters.h"

@interface ViewController ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation ViewController{
    
    ImageFilters *filterManager;
}


-(void)logAllFilters {
    NSArray *properties = [CIFilter filterNamesInCategory:
                           kCICategoryBuiltIn];
    NSLog(@"%@", properties);
    for (NSString *filterName in properties) {
        CIFilter *fltr = [CIFilter filterWithName:filterName];
        NSLog(@"%@", [fltr attributes]);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *baseImage = [UIImage imageNamed:@"image"];
    
    filterManager  = [[ImageFilters alloc] initWithImage:baseImage];
    UIImage *filteredImage = [filterManager oldImageWithIntensity:0.8];
    self.imageView.image = filteredImage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)amountSliderValueChanged:(UISlider *)slider {
    
    UIImage *image = [filterManager oldImageWithIntensity:slider.value];
    if (image) {
        self.imageView.image = image;
    }
    
}

- (IBAction)grayScaleImage:(id)sender
{
    UIImage *grayScaleImage = [filterManager grayScaleImage];
    self.imageView.image = grayScaleImage;
}

- (IBAction)loadPhoto:(id)sender {
    UIImagePickerController *pickerC =
    [[UIImagePickerController alloc] init];
    pickerC.delegate = self;
    [self presentViewController:pickerC animated:YES completion:nil];
}

- (IBAction)savePhoto:(id)sender {
    if( self.imageView.image )
    {
        ALAssetsLibrary* library = [[ALAssetsLibrary alloc] init];
        [library writeImageToSavedPhotosAlbum:self.imageView.image.CGImage metadata:nil completionBlock:^(NSURL *assetURL, NSError *error) {
            
        }];
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    UIImage *gotImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    filterManager = [[ImageFilters alloc] initWithImage:gotImage];
    [self amountSliderValueChanged:self.amountSlider];
}

- (void)imagePickerControllerDidCancel:
(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
