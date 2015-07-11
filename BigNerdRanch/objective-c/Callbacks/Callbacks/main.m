//
//  main.m
//  Callbacks
//
//  Created by Davis Koh on 7/11/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

/**
 * Rules for Callbacks:
 *
 * when sending 1 callback to 1 object, use Target-Action
 * - ex: timer below
 *
 * when sending multiple callbacks to 1 object, use Helper Object w/ Protocol
 * - ex: fetchConn below
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Logger *logger = [[Logger alloc] init];
        
        // Target-Action
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                                   target:logger
                                                                 selector:@selector(sayOuch:)
                                                                 userInfo:(nil)
                                                                  repeats:YES];
        
        // Helper Object w/ Protocol
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        // Notifications
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
        
        // run loop is an infinite loop waiting for something to happen
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
