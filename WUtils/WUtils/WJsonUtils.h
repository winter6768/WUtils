//
//  WJsonUtils.h
//  WUtils
//
//  Created by winter on 2019/11/5.
//  Copyright © 2019 winter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WJsonUtils : NSObject

/// 对象转json
/// @param jsonObject 字典、数组...
+(NSString *)jsonStringWithJsonObject:(id)jsonObject;

/// json转对象
+(id)jsonObjectWithJsonString:(NSString *)jsonString;

/// json转字典
+(NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

/// json转数组
+(NSArray *)arrayWithJsonString:(NSString *)jsonString;



@end

