//
//  ViewController.m
//  ProjectDemo
//
//  Created by shawjan on 16/3/25.
//  Copyright © 2016年 shawjan. All rights reserved.
//

#import "ViewController.h"
#import "AdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"123");
    // Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"FrameworkBundle" withExtension:@"bundle"]];
    AdViewController *adView = [[AdViewController alloc] initWithNibName:@"AdViewController" bundle:bundle];
    [self.view addSubview:adView.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
