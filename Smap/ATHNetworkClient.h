//
//  ATHNetworkClient.h
//  Smap
//
//  Created by Daniel Shusta on 2/21/13.
//  Copyright (c) 2013 Athensworks. All rights reserved.
//

#import "AFHTTPClient.h"
#import "ATHSmell.h"

@interface ATHNetworkClient : AFHTTPClient

+ (instancetype)sharedClient;

- (void)postNewSmellWithName:(NSString *)name latitude:(NSNumber *)latitude longitude:(NSNumber *)longitude;

@end
