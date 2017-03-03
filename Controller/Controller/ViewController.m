//
//  ViewController.m
//  Controller
//
//  Created by 赵岩 on 2017/3/3.
//  Copyright © 2017年 赵岩. All rights reserved.
//

#import "ViewController.h"
#import "OneVC.h"
#import "TwoVC.h"
#import "ThreeVC.h"
#import "FourVC.h"
#import "OptionBarController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"多个控制器";
    
    OneVC *oneVC = [[OneVC alloc]init];
    TwoVC *twoVC = [[TwoVC alloc]init];
    ThreeVC *threeVC = [[ThreeVC alloc]init];
    FourVC *fourVC = [[FourVC alloc]init];
    
    NSArray *controllersArr = @[oneVC, twoVC, threeVC,fourVC];
    OptionBarController *navTabBarController = [[OptionBarController alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 44) andSubViewControllers:controllersArr andParentViewController:self andSelectedViewColor:[UIColor whiteColor] andSelectedTextColor:[UIColor orangeColor] andShowSeperateLine:NO andShowBottomLine:YES];
    navTabBarController.linecolor=[UIColor orangeColor];
    //自动下拉刷新
    navTabBarController.clickBlock = ^(NSInteger currentIndex){
        switch (currentIndex) {
            case 0:
                oneVC.lab.text = @"I am one";
                break;
            case 1:
                twoVC.lab.text = @"I am two";
                break;
            case 2:
                threeVC.lab.text = @"I am three";
                break;
            case 3:
                fourVC.lab.text = @"I am four";
                break;
                
            default:
                break;
        }
    };
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
