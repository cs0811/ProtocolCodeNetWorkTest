//
//  BaseClient.h
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClientProtocol.h"

static NSString * const kBaseHost = @"https://api.onevcat.com";

@interface BaseClient : NSObject<ClientProtocol>

@end
