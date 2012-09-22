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
    }
    return self;
}

- (void)setEmployees
{
    NSDictionary *dict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Guill Lo", @"name", @"458", @"ext", @"guill@email.com", @"email", nil];
    Employee *employee1 = [[Employee alloc] initWithDictionary:dict1];
    NSDictionary *dict2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"IT Support", @"name", @"555", @"ext", @"itsupport@email.com", @"email", nil];
    Employee *employee2 = [[Employee alloc] initWithDictionary:dict2];
    NSDictionary *dict3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Annoying Witness", @"name", @"123", @"ext", @"annoyingwitness@email.com", @"email", nil];
    Employee *employee3 = [[Employee alloc] initWithDictionary:dict3];
    
    employees = [[NSArray alloc] initWithObjects:employee1, employee2, employee3, nil];
}


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    NSInteger count = 0;
    if (self->employees) {
        count = [employees count];
    }
    
    return count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *identifier = [tableColumn identifier];
    Employee *employee = [employees objectAtIndex:row];
    return [employee valueForKey:identifier];
}
@end
