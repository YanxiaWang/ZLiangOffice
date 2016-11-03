//
//  MainPageViewController.m
//  ZLiangOffice
//
//  Created by bluemobi on 16/11/2.
//  Copyright © 2016年 中粮. All rights reserved.
//

#import "MainPageViewController.h"

@interface MainPageViewController ()

@end

@implementation MainPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray * controllers = @[@"HomePageViewController",@"ServiceViewController",@"SmartCommunityViewController",@"CircleViewController",@"YKHViewController"];
    
    NSArray * titlesArr = @[@"首页",@"服务",@"智能社区",@"圈子",@"悦客会"];

    //NSArray * imageArr = @[@"tab_trip_normal@2x",@"tab_recommend_normal@2x",@"tab_raiders_normal@2x",@"tab_tool_normal@2x"];
    
    //NSArray * imageSelectedArr = @[@"tab_trip_selected@2x",@"tab_recommend_selected@2x",@"tab_raiders_selected@2x",@"tab_tool_selected@2x"];
    
    for (int i = 0; i < 5; i++)
    {
        Class controllerClass = NSClassFromString(controllers[i]);
        UIViewController * controller = [controllerClass new];
        
        //controller.tabBarItem = [[UITabBarItem alloc]initWithTitle:titlesArr[i] image:nil selectedImage:nil];
        controller.title = titlesArr[i];
        
        
        
        UINavigationController * nc = [[UINavigationController alloc] initWithRootViewController:controller];
        
        
        [self addChildViewController:nc];
    }
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
