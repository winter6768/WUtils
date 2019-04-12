//
//  UIResponder+WUtils.h
//  WUtils
//
//  Created by winter on 2019/4/11.
//  Copyright © 2019 winter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (WUtils)

/**
 借用responder chain传递事件
 
 @param eventName 事件名称
 @param userInfo 参数
 */
-(void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end

