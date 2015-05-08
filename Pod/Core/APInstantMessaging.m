//
//  APInstantMessaging.m
//  Nuzzel
//
//  Created by Ross MacKinnon on 5/8/15.
//  Copyright (c) 2015 Nuzzel, Inc. All rights reserved.
//

#import "APInstantMessaging.h"
#import <AddressBook/AddressBook.h>

@interface APInstantMessaging ()
@property (nonatomic, readwrite) NSString *service;
@property (nonatomic, readwrite) NSString *username;
@end

@implementation APInstantMessaging

#pragma mark - life cycle

- (instancetype)initWithInstantMessaging:(NSDictionary *)dictionary
{
    if (self = [super init])
    {
        NSString *serviceKey = (__bridge_transfer NSString *)kABPersonInstantMessageServiceKey;
        NSString *usernameKey = (__bridge_transfer NSString *)kABPersonInstantMessageUsernameKey;
        _service = dictionary[serviceKey];
        _username = dictionary[usernameKey];
    }
    
    return self;
}

@end
