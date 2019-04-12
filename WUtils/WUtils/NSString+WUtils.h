//
//  NSString+WUtils.h
//  WUtils
//
//  Created by winter on 2019/4/4.
//  Copyright © 2019 winter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (WUtils)

/// 检查字符串是否为纯数字
-(BOOL)checkPureInt;

/// 删除首尾空格
-(NSString *)removeSpaces;

/// 删除所有出现的空格
-(NSString *)removeAllSpaces;

/// 检查字符串是否为空
-(BOOL)checkEmpty;

@end

