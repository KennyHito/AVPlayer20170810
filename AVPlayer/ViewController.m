//
//  ViewController.m
//  AVPlayer
//
//  Created by Apple on 2017/8/10.
//  Copyright © 2017年 KennyHito. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
    [btn setTitle:@"视频播放" forState:0];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)btnClick:(UIButton *)btn{
    VideoViewController * v = [[VideoViewController alloc]init];
    [self.navigationController pushViewController:v animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
