//
//  BaseClient.m
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import "BaseClient.h"

@implementation BaseClient

- (NSString *)host {
    return kBaseHost;
}

- (void)sendWithRequest:(id<RequestProtocol>)request handler:(void (^)(id<ResultProtocol>))handler {
    NSString * urlStr = [NSString stringWithFormat:@"%@%@",[self host],[request path]];
    NSMutableURLRequest * req = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
    req.HTTPMethod = [request method];
    
    // httpBody ...
    
    [request willBeginNetWorkWithRequest:req];
    
    NSURLSessionDataTask * task = [[NSURLSession sharedSession] dataTaskWithRequest:req completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        Class cls = [request resuslt];
        if (data) {
            id result = [cls parseWithData:data];
            if (result) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    handler(result);
                });
                return ;
            }
        }
        
        id<ResultProtocol> result = [cls new];
        [result setErrorMsg:@""];
        [result setErrorCode:0];
        [result setResultMsg:@"success"];
        dispatch_async(dispatch_get_main_queue(), ^{
            handler(result);
        });
        
    }];
    [task resume];
}

@end
