//
//  CTMediator+CJA.m
//  A_Category
//
//  Created by zhusf on 2019/2/25.
//  Copyright © 2019 496795352@qq.com. All rights reserved.
//

#import "CTMediator+CJA.h"
NSString * const kCTMediatorTargetA = @"A_SecionViewController";

NSString * const kCTMediatorActionASecionViewController = @"ASecionViewController";
@implementation CTMediator (CJA)
- (UIViewController *)A_SecionInfoWithName:(NSString *)name age:(NSInteger)age {
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:name forKey:@"name"];
    [dic setValue:@(age) forKey:@"age"];
    
    return [self performTarget:kCTMediatorTargetA action:kCTMediatorActionASecionViewController params:dic shouldCacheTarget:NO];
}
@end
