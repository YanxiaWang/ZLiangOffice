
//
//  HomePageViewController.m
//  ZLiangOffice
//
//  Created by bluemobi on 16/11/2.
//  Copyright © 2016年 中粮. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
    self.view.backgroundColor = [UIColor colorWithRed:0.93 green:0.94 blue:0.95 alpha:1.00];
    [self createUI];
}
-(void)createUI{

    UIImageView * backImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"homeBack"]];
    [self.view addSubview:backImage];
    [self.view sendSubviewToBack:backImage];
    
    [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view);
        make.height.mas_equalTo(AutoHeight(210));
        make.left.mas_equalTo(self.view);
        make.right.mas_equalTo(self.view);
    }];
    
    UIColor * titleColor = [UIColor colorWithRed:0.84 green:0.84 blue:0.87 alpha:1.00];
    UILabel * titleLabel = [CommUtls createLabelWithTitle:@"中粮置地广场" fontSize:Font_Fifteen_S textColor:COLOR_WhiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(AutoHeight(20));
        make.height.mas_equalTo(AutoHeight(30));
        make.left.mas_equalTo(self.view);
        make.right.mas_equalTo(self.view);
    }];
    
    UIImageView * weatherView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"weatherBack"]];
    [self.view addSubview:weatherView];
    
    [weatherView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(backImage.mas_top).offset(AutoHeight(145));
        make.height.mas_equalTo(AutoHeight(35));
        make.width.mas_equalTo(AutoWidth(80));
        make.right.mas_equalTo(self.view);
    }];
    
    
    
    UIImageView * infoView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"infoBack"]];
    [self.view addSubview:infoView];
    
    [infoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(backImage.mas_bottom).offset(AutoHeight(-20));
        make.height.mas_equalTo(AutoHeight(60));
        make.left.mas_equalTo(self.view).offset(AutoWidth(5));
        make.right.mas_equalTo(self.view).offset(AutoWidth(-5));
    }];
    
    UIButton * infoBtn = [CommUtls createButtonWithTitle:nil image:@"infoIcon" fontSize:nil textColor:nil target:nil sel:nil];
    [infoView addSubview:infoBtn];
    [infoBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(infoView).offset(AutoHeight(25));
        make.bottom.mas_equalTo(infoView).offset(AutoHeight(-25));
        make.left.mas_equalTo(infoView).offset(AutoWidth(10));
        make.width.mas_equalTo(AutoWidth(50));
    }];
    
    
    

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
