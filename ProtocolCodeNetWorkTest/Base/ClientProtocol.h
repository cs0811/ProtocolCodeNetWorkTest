//
//  ClientProtocol.h
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#ifndef ClientProtocol_h
#define ClientProtocol_h

#import "RequestProtocol.h"
#import "ResultProtocol.h"

@protocol ClientProtocol <NSObject>

@property (nonatomic, copy, readonly) NSString * host;

- (void)sendWithRequest:(id<RequestProtocol>)request handler:(void(^)(id<ResultProtocol> response))handler;

@end

#endif /* ClientProtocol_h */
