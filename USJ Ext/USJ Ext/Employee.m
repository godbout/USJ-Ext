//
//  Employee.m
//  USJ Ext
//
//  Created by Guill Lo on 9/21/12.
//  Copyright (c) 2012 sleeplessmind. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize name;
@synthesize ext;
@synthesize email;

- (id)init
{
    return [self initWithDictionary:[[NSDictionary alloc] initWithObjectsAndKeys:@"name", @"name", @"ext", @"ext", @"email", @"email", nil]];
}

- (id)initWithDictionary:(NSDictionary *)info
{
    self = [super init];
    if (self) {
        name = [info objectForKey:@"name"];
        ext = [info objectForKey:@"ext"];
        email = [info objectForKey:@"email"];
    }
    return self;
}

@end
