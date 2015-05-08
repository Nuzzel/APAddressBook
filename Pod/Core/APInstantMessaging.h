//
//  APInstantMessaging.h
//  Nuzzel
//
//  Created by Ross MacKinnon on 5/8/15.
//  Copyright (c) 2015 Nuzzel, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APInstantMessaging : NSObject

@property (nonatomic, readonly) NSString *service;
@property (nonatomic, readonly) NSString *username;

- (instancetype)initWithInstantMessaging:(NSDictionary *)dictionary;

@end
