//
//  ATHNetworkClient.h
//  Smap
//
//  Created by Daniel Shusta on 2/21/13.
//  Copyright (c) 2013 Athensworks. All rights reserved.
//

#import "AFNetworking.h"
#import "ATHSmell.h"
#import <CoreLocation/CoreLocation.h>

@interface ATHNetworkClient : AFHTTPClient

+ (instancetype)sharedClient;

- (void)postNewSmell:(ATHSmell *)smell
			 success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
			 failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

- (void)postNewSmellWithName:(NSString *)name
					latitude:(NSNumber *)latitude
				   longitude:(NSNumber *)longitude
					 success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
					 failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

- (void)getSmellsNearLocation:(CLLocationCoordinate2D)location
					 distance:(CLLocationDistance)distance
					  success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
					  failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
