//
//  Employee.h
//  USJ Ext
//
//  Created by Guill Lo on 9/21/12.
//  Copyright (c) 2012 sleeplessmind. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject
{
    NSString *name;
    NSString *ext;
    NSString *email;
    NSString *campus;
}
@property (readwrite, copy) NSString *name;
@property (readwrite, copy) NSString *ext;
@property (readwrite, copy) NSString *email;
@property (readwrite, copy) NSString *campus;

- (id)initWithDictionary:(NSDictionary *)info;
@end
