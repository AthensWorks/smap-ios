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

- (void)postNewSmellWithName:(NSString *)name latitude:(NSNumber *)latitude longitude:(NSNumber *)longitude {
	
}

@end
