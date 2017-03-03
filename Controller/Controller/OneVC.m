//
//  OneVC.m
//  一个控制器展示多个控制器
//
//  Created by 赵岩 on 16/8/31.
//  Copyright © 2016年 赵岩. All rights reserved.
//

#import "OneVC.h"

@interface OneVC ()

@end

@implementation OneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"one";
    self.view.backgroundColor = [UIColor greenColor];
    _lab = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    _lab.textColor = [UIColor whiteColor];
    _lab.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:_lab];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
