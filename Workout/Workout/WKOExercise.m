//
//  Exercise.m
//  Workout
//
//  Created by Alex Samarchi on 5/9/15.
//  Copyright (c) 2015 Alex Samarchi. All rights reserved.
//

#import "WKOExercise.h"

@implementation WKOExercise


- (id)initWithDictionary:(NSDictionary *)dictionary
{
    if(self = [super init])
    {
        self.exerciseId = [dictionary objectForKey:@"exerciseId"] ? [dictionary objectForKey:@"exerciseId"] : @"";
        self.name = [dictionary objectForKey:@"name"] ? [dictionary objectForKey:@"name"] : @"";
        self.exerciseDescription = [dictionary objectForKey:@"exerciseDescription"] ? [dictionary objectForKey:@"exerciseDescription"] : @"";
        self.image = [dictionary objectForKey:@"image"] ? [dictionary objectForKey:@"image"] : @"";
    }
    
    return self;
}

@end
