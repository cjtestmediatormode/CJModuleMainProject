//
//  CTMediator+CJB.h
//  CJB_Category_Example
//
//  Created by zhusf on 2019/2/26.
//  Copyright © 2019 496795352@qq.com. All rights reserved.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^ResultBlock)(BOOL isLike);
@interface CTMediator (CJB)
//跳转到B模块
- (UIViewController *)B_SecionInfoWithRemid:(NSString *)remid resultBlock:(ResultBlock)block;
@end

NS_ASSUME_NONNULL_END
