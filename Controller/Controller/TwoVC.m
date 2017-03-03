//
//  TwoVC.m
//  一个控制器展示多个控制器
//
//  Created by 赵岩 on 16/8/31.
//  Copyright © 2016年 赵岩. All rights reserved.
//

#import "TwoVC.h"

@interface TwoVC ()

@end

@implementation TwoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"two";
    self.view.backgroundColor = [UIColor grayColor];
    _lab = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    _lab.textColor = [UIColor whiteColor];
    _lab.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:_lab];
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
