//
//  CTMediator+CJB.m
//  CJB_Category_Example
//
//  Created by zhusf on 2019/2/26.
//  Copyright © 2019 496795352@qq.com. All rights reserved.
//

#import "CTMediator+CJB.h"
NSString * const kCTMediatorTargetB = @"B_SecionViewController";

NSString * const kCTMediatorActionBSecionViewController = @"BSecionViewController";
@implementation CTMediator (CJB)
- (UIViewController *)B_SecionInfoWithRemid:(NSString *)remid resultBlock:(ResultBlock)block {
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:remid forKey:@"remid"];
    [dic setValue:block forKey:@"myBlock"];
    //nw
    return [self performTarget:kCTMediatorTargetB action:kCTMediatorActionBSecionViewController params:dic shouldCacheTarget:NO];
}
@end
