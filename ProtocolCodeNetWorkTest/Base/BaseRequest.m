//
//  BaseRequest.m
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import "BaseRequest.h"

@implementation BaseRequest

- (NSString *)path {
    return nil;
}

- (NSString *)method {
    return kHTTPMethodGET;
}

- (NSDictionary *)parameter {
    return @{};
}

- (Class<ResultProtocol>)resuslt {
    return nil;
}

- (void)willBeginNetWorkWithRequest:(NSURLRequest *)reuqest {
    
}


@end
