//
//  RequestProtocol.h
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#ifndef RequestProtocol_h
#define RequestProtocol_h

#import "ResultProtocol.h"

static NSString * const kHTTPMethodGET = @"GET";
static NSString * const kHTTPMethodPOST = @"POST";


@protocol RequestProtocol <NSObject>

@property (nonatomic, copy, readonly) NSString * path;
@property (nonatomic, copy, readonly) NSString * method;
@property (nonatomic, strong, readonly) NSDictionary * parameter;
@property (nonatomic, strong, readonly) Class<ResultProtocol> resuslt;

- (void)willBeginNetWorkWithRequest:(NSURLRequest *)reuqest;

@end

#endif /* RequestProtocol_h */
