//
//  UIResponder+WUtils.m
//  WUtils
//
//  Created by winter on 2019/4/11.
//  Copyright © 2019 winter. All rights reserved.
//

#import "UIResponder+WUtils.h"

@implementation UIResponder (WUtils)

-(void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [[self nextResponder]routerEventWithName:eventName userInfo:userInfo];
}

@end
