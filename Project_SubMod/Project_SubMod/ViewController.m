//
//  ViewController.m
//  Project_SubMod
//
//  Created by shawjan on 16/3/28.
//  Copyright © 2016年 shawjan. All rights reserved.
//

#import "ViewController.h"
#import "AdViewController.h"
#import "NewsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"MyFrameworkBundle" withExtension:@"bundle"]];
//    AdViewController *adVC = [[AdViewController alloc] initWithNibName:@"AdViewController" bundle:bundle];
    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"MyFrameworkBundle" withExtension:@"bundle"]];
    NewsViewController *adVC = [[NewsViewController alloc] initWithNibName:@"NewsViewController" bundle:bundle];
    [self.view addSubview:adVC.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
