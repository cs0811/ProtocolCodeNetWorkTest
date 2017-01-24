//
//  User.m
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithData:(NSData *)data {
    NSDictionary * dic = nil;
    dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    if (!dic) {
        return nil;
    }
    self = [super init];
    
    self.name = dic[@"name"];
    if (!self.name) {
        return nil;
    }
    
    self.message = dic[@"message"];
    if (!self.message) {
        return nil;
    }
    
    self.errorMsg = @"";
    self.errorCode = 0;
    self.resultMsg = @"success";
    
    return self;
}



+ (instancetype)parseWithData:(NSData *)data {
    return [[User alloc] initWithData:data];
}


@end
