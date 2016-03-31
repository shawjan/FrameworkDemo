//
//  AdViewController.m
//  MyFramework
//
//  Created by shawjan on 16/3/28.
//  Copyright © 2016年 shawjan. All rights reserved.
//

#import "AdViewController.h"

@interface AdViewController ()
@property (strong, nonatomic) IBOutlet UILabel *adContents;

@end

@implementation AdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addAds:(NSString*)adContents
{
    self.adContents.text = adContents;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
