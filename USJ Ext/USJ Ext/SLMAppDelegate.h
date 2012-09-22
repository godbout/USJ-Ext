//
//  SLMAppDelegate.h
//  USJ Ext
//
//  Created by Guill Lo on 9/21/12.
//  Copyright (c) 2012 sleeplessmind. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SLMAppDelegate : NSObject <NSApplicationDelegate, NSTableViewDelegate, NSTableViewDataSource>
{
    NSArray *employees;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTableView *_tableView;

@end
