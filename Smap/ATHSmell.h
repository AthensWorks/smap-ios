//
//  ATHSmell.h
//  Smap
//
//  Created by Daniel Shusta on 2/21/13.
//  Copyright (c) 2013 Athensworks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ATHSmell : NSObject

@property (copy) NSString *id;
@property (copy) NSArray *reactions;
@property (strong) NSNumber *lat;
@property (strong) NSNumber *lon; // long is reserved word
@property (copy) NSDate *created_at;
@property (copy) NSString *name;
@property (strong) id up_votes;
@property (strong) id down_votes;


@end
