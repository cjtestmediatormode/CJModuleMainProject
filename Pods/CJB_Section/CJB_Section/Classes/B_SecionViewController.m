//
//  B_SecionViewController.m
//  CJMainProject
//
//  Created by zhusf on 2019/2/21.
//  Copyright © 2019 朱书峰. All rights reserved.
//

#import "B_SecionViewController.h"

@interface B_SecionViewController ()

@property (nonatomic, strong) UILabel *remindLab;
@property (nonatomic, strong) UIButton *likeBtn;
@property (nonatomic, strong) UIButton *unLikeBtn;
@end

@implementation B_SecionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.remindLab];
    [self.view addSubview:self.likeBtn];
    [self.view addSubview:self.unLikeBtn];
}
-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.remindLab.text = [NSString stringWithFormat:@"%@,谢谢！！！",self.remid];
}

- (void)btnClicked:(UIButton *)btn{
    switch (btn.tag) {
        case 1:
            self.myBlock(YES);
            [self dismissViewControllerAnimated:YES completion:nil];
            break;
            
        default:
            self.myBlock(NO);
            [self dismissViewControllerAnimated:YES completion:nil];
            break;
    }
}

-(UILabel *)remindLab{
    if (!_remindLab) {
        _remindLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
        _remindLab.textColor = [UIColor blackColor];
        _remindLab.textAlignment = NSTextAlignmentCenter;
        _remindLab.backgroundColor = [UIColor brownColor];
    }
    return _remindLab;
}

-(UIButton *)likeBtn{
    if (!_likeBtn) {
        _likeBtn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)*0.5, 220, 100, 40)];
        [_likeBtn setTitle:@"喜欢" forState:UIControlStateNormal];
        [_likeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_likeBtn setBackgroundColor:[UIColor cyanColor]];
        _likeBtn.tag = 1;
        [_likeBtn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _likeBtn;
}

-(UIButton *)unLikeBtn{
    if (!_unLikeBtn) {
        _unLikeBtn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)*0.5, 300, 100, 40)];
        [_unLikeBtn setTitle:@"烦" forState:UIControlStateNormal];
        [_unLikeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_unLikeBtn setBackgroundColor:[UIColor redColor]];
        _unLikeBtn.tag = 2;
        [_unLikeBtn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _unLikeBtn;
}
@end
