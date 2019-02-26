//
//  Target_B_SecionViewController.m
//  CJMainProject
//
//  Created by zhusf on 2019/2/21.
//  Copyright © 2019 朱书峰. All rights reserved.
//

#import "Target_B_SecionViewController.h"
#import "B_SecionViewController.h"
@implementation Target_B_SecionViewController
- (UIViewController *)Action_BSecionViewController:(NSDictionary *)param {
    B_SecionViewController *b_secion = [[B_SecionViewController alloc] init];
    b_secion.remid = [param valueForKey:@"remid"];
    b_secion.myBlock =[param valueForKey:@"myBlock"];
    return b_secion;
}
@end
