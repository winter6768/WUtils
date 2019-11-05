//
//  WJsonUtils.m
//  WUtils
//
//  Created by winter on 2019/11/5.
//  Copyright © 2019 winter. All rights reserved.
//

#import "WJsonUtils.h"

@implementation WJsonUtils

+(NSString *)jsonStringWithJsonObject:(id)jsonObject {
    if (jsonObject == nil) return nil;
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:jsonObject options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        NSLog(@"jsonObject to json error : %@",error);
        return nil;
    }
    return [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
}

+(id)jsonObjectWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) return nil;
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    if (error) {
        NSLog(@"json to jsonObject error : %@",error);
        return nil;
    }
    return jsonObject;
}

+(NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    id jsonObject = [self jsonObjectWithJsonString:jsonString];
    if (jsonObject == nil) return nil;
    if ([jsonObject isKindOfClass:[NSDictionary class]]) {
        return (NSDictionary *)jsonObject;
    }
    NSLog(@"json is not dictionary");
    return nil;
}

+(NSArray *)arrayWithJsonString:(NSString *)jsonString {
    id jsonObject = [self jsonObjectWithJsonString:jsonString];
    if (jsonObject == nil) return nil;
    if ([jsonObject isKindOfClass:[NSArray class]]) {
        return (NSArray *)jsonObject;
    }
    NSLog(@"json is not array");
    return nil;
}

@end
