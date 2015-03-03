//
//  HomeViewController.m
//  SloppySwiperExample
//
//  Created by yicheng wu on 14/12/3.
//  Copyright (c) 2014年 Arkadiusz Holko. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    self.view.backgroundColor = [UIColor brownColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 40);
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)btnAction{
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    
    [self.navigationController pushViewController:homeVC animated:YES];
}


@end
