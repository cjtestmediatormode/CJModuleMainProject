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
