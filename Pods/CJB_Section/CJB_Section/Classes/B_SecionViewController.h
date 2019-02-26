//
//  B_SecionViewController.h
//  CJMainProject
//
//  Created by zhusf on 2019/2/21.
//  Copyright © 2019 朱书峰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ResultBlock)(BOOL isLike);
@interface B_SecionViewController : UIViewController
@property (nonatomic,copy)NSString *remid;
@property (nonatomic, copy)ResultBlock myBlock;
@end

NS_ASSUME_NONNULL_END
