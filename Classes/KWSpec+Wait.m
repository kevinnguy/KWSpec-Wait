//
//  KWSpec+Wait.m
//  KWSpec+Wait
//
//  Created by Kevin Nguy on 8/20/15.
//  Copyright (c) 2015 kevinnguy. All rights reserved.
//

#import "KWSpec+Wait.h"

@implementation KWSpec (Wait)

+ (void)waitWithTimeout:(NSTimeInterval)timeout condition:(BOOL (^)())condition {
    NSDate *timeoutDate = [[NSDate alloc] initWithTimeIntervalSinceNow:timeout];
    while (condition() == NO) {
        if ([timeoutDate timeIntervalSinceDate:[NSDate date]] < 0) {
            return;
        }
        
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
    }
}

@end