//
//  WorkoutCollectionViewController.m
//  Workout
//
//  Created by Alex Samarchi on 5/8/15.
//  Copyright (c) 2015 Alex Samarchi. All rights reserved.
//

#import "ExerciseCollectionViewController.h"
#import "ExerciseCollectionViewCell.h"

@interface ExerciseCollectionViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *workoutArray;

@end

@implementation ExerciseCollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.workoutArray = @[ @"Chest", @"Arms", @"Back", @"Legs", @"Shoulders", @"Shoulders", @"Shoulders", @"Shoulders", @"Shoulders" ];
    [self.collectionView setBackgroundColor:[UIColor orangeColor]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - CollectionView DataSource


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.workoutArray count];
}


- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"ExerciseCollectionViewCell";
    
    ExerciseCollectionViewCell *workoutCell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return workoutCell;
}


@end
