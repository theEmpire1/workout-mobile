//
//  Exercise.h
//  Workout
//
//  Created by Alex Samarchi on 5/9/15.
//  Copyright (c) 2015 Alex Samarchi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercise : NSObject

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *reps;
@property(strong, nonatomic) NSString *sets;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
