//
//  ExerciseViewModel.h
//  Workout
//
//  Created by Alex Samarchi on 5/9/15.
//  Copyright (c) 2015 Alex Samarchi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WKOExerciseViewModel : NSNotification

@property (nonatomic, strong) NSString *exerciseNameString;
@property (nonatomic, strong) NSString *exerciseDescriptionString;
@property (nonatomic, strong) UIImage *exerciseSetsImage;

@end
