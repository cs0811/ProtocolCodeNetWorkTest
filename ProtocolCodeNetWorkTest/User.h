//
//  User.h
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseResult.h"

@interface User : BaseResult

@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * message;

- (instancetype)initWithData:(NSData *)data;

@end
