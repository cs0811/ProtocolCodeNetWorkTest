//
//  BaseResult.m
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import "BaseResult.h"
#import <objc/runtime.h>

static char kErrorCode;
static char kErrorMsg;
static char kResultMsg;

@implementation BaseResult

- (void)setErrorCode:(NSInteger)errorCode {
    objc_setAssociatedObject(self, &kErrorCode, @(errorCode), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSInteger)errorCode {
    return [objc_getAssociatedObject(self, &kErrorCode) integerValue];
}

- (void)setErrorMsg:(NSString *)errorMsg {
    objc_setAssociatedObject(self, &kErrorMsg, errorMsg, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)errorMsg {
    return objc_getAssociatedObject(self, &kErrorMsg);
}

- (void)setResultMsg:(NSString *)resultMsg {
    objc_setAssociatedObject(self, &kResultMsg, resultMsg, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)resultMsg {
    return objc_getAssociatedObject(self, &kResultMsg);
}

+ (instancetype)parseWithData:(NSData *)data {
    return nil;
}

@end
