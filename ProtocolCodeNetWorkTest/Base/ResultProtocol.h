//
//  ResultProtocol.h
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#ifndef ResultProtocol_h
#define ResultProtocol_h

@protocol ResultProtocol <NSObject>

@property (nonatomic, assign) NSInteger errorCode;

// show developer
@property (nonatomic, copy) NSString * errorMsg;

@property (nonatomic, copy) NSString * resultMsg;

+ (instancetype)parseWithData:(NSData *)data;

@end


#endif /* ResultProtocol_h */
