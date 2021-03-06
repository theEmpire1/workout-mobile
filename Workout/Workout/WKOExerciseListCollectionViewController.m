//
//  WorkoutCollectionViewController.m
//  Workout
//
//  Created by Alex Samarchi on 5/8/15.
//  Copyright (c) 2015 Alex Samarchi. All rights reserved.
//

#import "WKOExerciseListCollectionViewController.h"
#import "WKOExerciseCollectionViewCell.h"

@interface WKOExerciseListCollectionViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *workoutArray;

@end

@implementation WKOExerciseListCollectionViewController

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
    static NSString *cellIdentifier = @"WKOExerciseCollectionViewCell";
    
    WKOExerciseCollectionViewCell *workoutCell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return workoutCell;
}


@end
