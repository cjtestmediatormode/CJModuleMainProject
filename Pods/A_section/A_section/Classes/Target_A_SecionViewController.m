//
//  Target_A_SecionViewController.m
//  CJMainProject
//
//  Created by zhusf on 2019/2/21.
//  Copyright © 2019 朱书峰. All rights reserved.
//

#import "Target_A_SecionViewController.h"
#import "A_SecionViewController.h"
@implementation Target_A_SecionViewController
- (UIViewController *)Action_ASecionViewController:(NSDictionary *)param {
    A_SecionViewController *a_secion = [[A_SecionViewController alloc] init];
    a_secion.name = [param valueForKey:@"name"];
    a_secion.age = ((NSNumber *)[param valueForKey:@"age"]).integerValue;
    return a_secion;
}
@end
