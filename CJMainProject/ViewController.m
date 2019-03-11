//
//  ViewController.m
//  CJMainProject
//
//  Created by zhusf on 2019/2/21.
//  Copyright © 2019 朱书峰. All rights reserved.
//

#import "ViewController.h"
#import <CJA_Category/CTMediator+CJA.h>
@interface ViewController ()
@property (nonatomic, strong)UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.btn];
}
- (void)btnClick:(UIButton *)sender {
    //原则上CJA_Category是分开的，为了方便，可以将CJA_Category和CJB_Category合并在一起
    //创建5个分支
    //1,develop：开发版本，用于提交开发中的版本
    //2,release：预上线版本，用于测试过程中的版本，或者即将上线的版本
    //3，feature：功能1模块开发，用于一个业务功能的开发
    //4，hotfix:线上bug修改版本，用于修改线上bug
    //5，master：主干版本。
    UIViewController *assion = [[CTMediator sharedInstance] A_SecionInfoWithName:@"我" age:18];
    [self presentViewController:assion animated:YES completion:nil];
}
- (UIButton *)btn {
    if (!_btn) {

        _btn = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-100, self.view.frame.size.height/2-50, 200, 50)];
        _btn.backgroundColor = [UIColor yellowColor];
        [_btn setTitle:@"进入Module_A" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}
@end
