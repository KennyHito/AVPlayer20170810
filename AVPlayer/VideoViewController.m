//
//  VideoViewController.m
//  AVPlayer
//
//  Created by Apple on 2017/8/10.
//  Copyright © 2017年 KennyHito. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@property (nonatomic,copy)NSString * flag;
@property (nonatomic,strong)videoView * videoV;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self addNotifi];
    
    _videoV = [[videoView alloc]initWithFrame:CGRectMake(0, 0, HitoScreenW, HitoActureHeight(240)) AndURL:MP4_URL];
    [self.view addSubview:_videoV];
    
    //重写返回按钮功能
    UIBarButtonItem * leftBtn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"videoback"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = leftBtn;
}

#pragma mark ------------------返回按钮--------------------
- (void)back{
    if ([self.flag isEqualToString:@"heng"]) {
        [_videoV HitoChangeHeng];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
        [[NSNotificationCenter defaultCenter]postNotificationName:@"pause" object:nil];
    }
}

- (void)addNotifi{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(tifi:) name:@"tifi" object:nil];
}

- (void)tifi:(NSNotification *)cation{
    NSDictionary * dic = cation.userInfo;
    self.flag = dic[@"fang"];
}
#pragma mark ------------------导航栏隐藏------------------
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];//隐藏导航栏
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];//去除黑线
}

#pragma mark ------------------导航栏还原------------------
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];//显示导航栏
    [self.navigationController.navigationBar setShadowImage:nil];//加上黑线
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
