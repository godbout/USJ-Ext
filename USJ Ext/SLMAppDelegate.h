//
//  SLMAppDelegate.h
//  USJ Ext
//
//  Created by Guill Lo on 9/16/12.
//  Copyright (c) 2012 sleeplessmind. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SLMAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end
