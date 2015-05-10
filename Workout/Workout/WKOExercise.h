//
//  Exercise.h
//  Workout
//
//  Created by Alex Samarchi on 5/9/15.
//  Copyright (c) 2015 Alex Samarchi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WKOExercise : NSObject

@property(strong, nonatomic) NSString *exerciseId;
@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *exerciseDescription;
@property(strong, nonatomic) NSString *image;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
