//
//  UserRequest.m
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import "UserRequest.h"
#import "User.h"

@implementation UserRequest

- (NSString *)path {
    NSString * str = [NSString stringWithFormat:@"/users/%@",self.name];
    return str;
}

- (Class<ResultProtocol>)resuslt {
    return [User class];
}

- (void)willBeginNetWorkWithRequest:(NSURLRequest *)reuqest {
    // ...
}

@end
