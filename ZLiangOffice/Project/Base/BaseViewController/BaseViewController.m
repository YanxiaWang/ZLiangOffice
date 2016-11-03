//
//  BaseViewController.m
//  ZLiangOffice
//
//  Created by bluemobi on 16/11/3.
//  Copyright © 2016年 中粮. All rights reserved.
//

#import "BaseViewController.h"
#import "AppDelegate.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = COLOR_WhiteColor;
    [self initnavigationBar];

}

-(void)initnavigationBar{
    UIButton * mineBtn = [CommUtls createButtonWithTitle:nil image:@"navi-Mine" fontSize:nil textColor:nil target:self sel:@selector(gotoPersonalCenter)];
    [self.view addSubview:mineBtn];
    UIButton* messageBtn = [CommUtls createButtonWithTitle:nil image:@"navi-Message" fontSize:nil textColor:nil target:self sel:@selector(gotoPersonalCenter)];
    [self.view addSubview:messageBtn];\
    [mineBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(AutoHeight(20));
        make.height.mas_equalTo(AutoHeight(35));
        make.left.mas_equalTo(self.view).offset(AutoWidth(10));
        make.width.mas_equalTo(AutoWidth(35));
    }];
    [messageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(AutoHeight(20));
        make.height.mas_equalTo(AutoHeight(35));
        make.right.mas_equalTo(self.view).offset(AutoWidth(-10));
        make.width.mas_equalTo(AutoWidth(35));
    }];
}
-(void)gotoPersonalCenter{
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (tempAppDelegate.LeftSlideVC.closed)
    {
        [tempAppDelegate.LeftSlideVC openLeftView];
    }
    else
    {
        [tempAppDelegate.LeftSlideVC closeLeftView];
    }

}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:NO];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:YES];
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
