//
//  ATHNetworkClient.m
//  Smap
//
//  Created by Daniel Shusta on 2/21/13.
//  Copyright (c) 2013 Athensworks. All rights reserved.
//

#import "ATHNetworkClient.h"
#import "AFNetworking.h"

NSString *const baseURLPath = @"http:/georoma.herokuapp.com";

@implementation ATHNetworkClient

+ (instancetype)sharedClient {
	static ATHNetworkClient *sharedClient;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedClient = [[ATHNetworkClient alloc] initWithBaseURL:[NSURL URLWithString:baseURLPath]];
	});
	
	return sharedClient;
}

- (id)initWithBaseURL:(NSURL *)url {
	self = [super initWithBaseURL:url];
	
	if ( self ) {
		[self registerHTTPOperationClass:[AFJSONRequestOperation class]];
	}
	
	return self;
}

- (void)postNewSmell:(ATHSmell *)smell success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
	[self postNewSmellWithName:smell.name latitude:smell.lat longitude:smell.lon success:success failure:failure];
}

- (void)postNewSmellWithName:(NSString *)name latitude:(NSNumber *)latitude longitude:(NSNumber *)longitude success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
	if ( name.length == 0 )
		return;
	if ( latitude == nil )
		return;
	if ( longitude == nil )
		return;
	
	NSDictionary *params = @{@"name": name,
						  @"lat": latitude,
						  @"lon": longitude};
	
	[self postPath:@"post/v1/smells" parameters:params success:success failure:failure];
}

@end
