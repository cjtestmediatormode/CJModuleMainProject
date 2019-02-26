//
//  A_SecionViewController.m
//  CJMainProject
//
//  Created by zhusf on 2019/2/21.
//  Copyright © 2019 朱书峰. All rights reserved.
//

#import "A_SecionViewController.h"
//#import "CTMediator+B_Secion.h"
#import <CJB_Category/CTMediator+CJB.h>
@interface A_SecionViewController ()
@property (nonatomic, strong)UIButton *closeBtn;

@property (nonatomic, strong) UIButton *likeBtn;
@property (nonatomic, strong) UILabel *displayLab;

@end

@implementation A_SecionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.displayLab];
    [self.view addSubview:self.likeBtn];
}
-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.displayLab.text = [NSString stringWithFormat:@"%@今年%ld岁，是个高富帅",self.name,self.age];
}
-(void)closeBtnClick:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-100, self.view.frame.size.height-100, 200, 50)];
        _closeBtn.backgroundColor = [UIColor yellowColor];
        [_closeBtn setTitle:@"关闭" forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_closeBtn addTarget:self action:@selector(closeBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _closeBtn;
}
- (void)btnClick{
    UIViewController *con = [[CTMediator sharedInstance] B_SecionInfoWithRemid:@"希望你能喜欢我" resultBlock:^(BOOL isLike) {
        if (isLike) {
            [self.likeBtn setTitle:@"对方喜欢你" forState:UIControlStateNormal];
            self.likeBtn.backgroundColor = [UIColor cyanColor];
        }else{
            [self.likeBtn setTitle:@"对方讨厌你" forState:UIControlStateNormal];
            self.likeBtn.backgroundColor = [UIColor redColor];
        }
    }];
    [self presentViewController:con animated:YES completion:nil];
}

-(UILabel *)displayLab{
    if (!_displayLab) {
        _displayLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
        _displayLab.textColor = [UIColor blackColor];
        _displayLab.textAlignment = NSTextAlignmentCenter;
        _displayLab.backgroundColor = [UIColor yellowColor];
    }
    return _displayLab;
}

-(UIButton *)likeBtn{
    if (!_likeBtn) {
        _likeBtn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)*0.5, 220, 100, 40)];
        [_likeBtn setTitle:@"开始打分" forState:UIControlStateNormal];
        [_likeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_likeBtn setBackgroundColor:[UIColor yellowColor]];
        [_likeBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _likeBtn;
}

@end
