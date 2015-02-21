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
        
        // Create a mutable array
        NSMutableArray *dateList = [NSMutableArray array];
        
        // Add two dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        // Add yesterday to the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        
        // iterate over the array
        for(NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
