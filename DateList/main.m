//
//  main.m
//  DateList
//
//  Created by Jim Toepel on 2/20/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60 *60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24 * 60 * 60];
        
        // Create and Array with all three dates
        
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
