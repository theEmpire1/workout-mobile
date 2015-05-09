//
//  Exercise.m
//  Workout
//
//  Created by Alex Samarchi on 5/9/15.
//  Copyright (c) 2015 Alex Samarchi. All rights reserved.
//

#import "Exercise.h"

@implementation Exercise


- (id)initWithDictionary:(NSDictionary *)dictionary
{
    if(self = [super init])
    {
        self.name = [dictionary objectForKey:@"name"] ? [dictionary objectForKey:@"name"] : @"";
        self.reps = [dictionary objectForKey:@"reps"] ? [dictionary objectForKey:@"reps"] : @"";
        self.sets = [dictionary objectForKey:@"sets"] ? [dictionary objectForKey:@"sets"] : @"";
    }
    
    return self;
}


@end
