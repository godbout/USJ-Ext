//
//  SLMAppDelegate.m
//  USJ Ext
//
//  Created by Guill Lo on 9/21/12.
//  Copyright (c) 2012 sleeplessmind. All rights reserved.
//

#import "SLMAppDelegate.h"
#import "Employee.h"

@implementation SLMAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (id)init
{
    self = [super init];
    if (self) {
        [self setEmployees];
        NSLog(@"there are %ld employees", [employees count]);
    }
    return self;
}

- (void)setEmployees
{
    NSDictionary *dict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Guill Lo", @"name", @"458", @"ext", @"guill@usj.edu.mo", @"email", nil];
    Employee *employee1 = [[Employee alloc] initWithDictionary:dict1];
    NSDictionary *dict2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Eric Chan", @"name", @"643", @"ext", @"eric@usj.edu.mo", @"email", nil];
    Employee *employee2 = [[Employee alloc] initWithDictionary:dict2];
    NSDictionary *dict3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Miguel Lemos", @"name", @"555", @"ext", @"miguel@usj.edu.mo", @"email", nil];
    Employee *employee3 = [[Employee alloc] initWithDictionary:dict3];
    
    employees = [[NSArray alloc] initWithObjects:employee1, employee2, employee3, nil];
}

@end
