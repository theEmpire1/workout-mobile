//
//  WorkoutCollectionViewCell.m
//  Workout
//
//  Created by Alex Samarchi on 5/8/15.
//  Copyright (c) 2015 Alex Samarchi. All rights reserved.
//

#import "WKOExerciseCollectionViewCell.h"
#import "WKOExerciseViewModel.h"


@interface WKOExerciseCollectionViewCell ()

@property (nonatomic, strong) IBOutlet UILabel *exerciseNameLabel;
@property (nonatomic, strong) WKOExerciseViewModel *exerciseViewModel;

@end


@implementation WKOExerciseCollectionViewCell


#pragma mark - Setup & Teardown


- (void)dealloc
{
    [self unregisterNotifications];
    self.exerciseViewModel = nil;
}


#pragma mark - [UICollectionViewCell Overrides]


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self cleanUpData];
}


- (void)prepareForReuse
{
    [super prepareForReuse];
    
    [self cleanUpData];
    [self unregisterNotifications];
    self.exerciseViewModel = nil;
}


#pragma mark - Private


- (void)cleanUpData
{
    self.exerciseNameLabel.text = nil;
}


- (void)setupData
{
    [self registerForNotifications];
    
    self.exerciseNameLabel.text = self.exerciseViewModel.exerciseNameString;
    
}


#pragma mark - Notification Setup & Teardown


- (void)registerForNotifications
{
    
}


- (void)unregisterNotifications
{
    
}


#pragma mark - Notifications


- (WKOExerciseViewModel *)exerciseViewModel
{
    if (_exerciseViewModel == nil) {
        _exerciseViewModel = [WKOExerciseViewModel new];
        
    }
    return _exerciseViewModel;
}


@end
