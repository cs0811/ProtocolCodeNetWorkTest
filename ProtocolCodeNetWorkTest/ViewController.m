//
//  ViewController.m
//  ProtocolCodeNetWorkTest
//
//  Created by tongxuan on 17/1/22.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import "ViewController.h"
#import "UserRequest.h"
#import "BaseClient.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UserRequest * request = [UserRequest new];
    request.name = @"onevcat";
    
    BaseClient * client = [BaseClient new];
    [client sendWithRequest:request handler:^(id<ResultProtocol> response) {
        
        if ([response isKindOfClass:[User class]]) {
            User * user = (User *)response;
            NSLog(@"%@ form %@",user.message,user.name);
        }
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
