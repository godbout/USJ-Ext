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

@synthesize _tableView;

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

- (void)awakeFromNib
{
    [_tableView setSortDescriptors:[NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"name" ascending: YES]]];
}


// Later later, will load from Google Drive if file doesn't exist
- (void)setEmployees
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"xml"];
    employees = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
}

/* Not needed anymore because using an ArrayController, because easier for NSTableView filtering */
//# pragma mark NSTableViewDataSource methods
//- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
//{
//    NSInteger count = 0;
//    if (self->employees) {
//        count = [employees count];
//    }
//    
//    return count;
//}
//
//- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
//{
//    NSString *identifier = [tableColumn identifier];
//    Employee *employee = [employees objectAtIndex:row];
//    return [employee valueForKey:identifier];
//}

@end
