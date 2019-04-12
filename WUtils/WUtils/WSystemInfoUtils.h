//
//  WSystemInfoUtils.h
//  WUtils
//
//  Created by winter on 2019/3/29.
//  Copyright © 2019 winter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WSystemInfoUtils : NSObject
/// 系统版本号
+(NSString *)systemVersion;
/// app版本号
+(NSString *)appVersion;
/// 构建版本号
+(NSString *)buildVersion;
/// 设备名称
+(NSString *)deviceName;
/// 手机型号
+(NSString *)deviceModelName;
/// 设备UUID
+(NSString *)deviceUUID;
/// 随机GUID
+(NSString *)randomGUID;
/// 本地时区
+(NSString *)localTimeZone;
/// IP地址
+(NSString *)ipAddress;


@end

