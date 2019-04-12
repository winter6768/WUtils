//
//  NSString+WUtils.m
//  WUtils
//
//  Created by winter on 2019/4/4.
//  Copyright © 2019 winter. All rights reserved.
//

#import "NSString+WUtils.h"

@implementation NSString (WUtils)

- (BOOL)checkPureInt {
    NSScanner *scan = [NSScanner scannerWithString:self];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

- (NSString *)removeSpaces {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)removeAllSpaces {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

- (BOOL)checkEmpty {
    if (![self isKindOfClass:[NSString class]]) return YES;
    if (!self.length) return YES;
    return NO;
}

@end
