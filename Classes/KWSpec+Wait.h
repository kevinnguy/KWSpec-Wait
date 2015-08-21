//
//  KWSpec+Wait.h
//  KWSpec+Wait
//
//  Created by Kevin Nguy on 8/20/15.
//  Copyright (c) 2015 kevinnguy. All rights reserved.
//

#import "KWSpec.h"

// Got help from:
// http://blog.carbonfive.com/2012/07/11/ios-integration-tests-with-kiwi/

@interface KWSpec (Wait)
+ (void)waitWithTimeout:(NSTimeInterval)timeout condition:(BOOL (^)())condition;

@end
