//
//  FirstViewController.m
//  FilmesESeries
//
//  Created by João Gabriel  on 14/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.filmesCollectionView registerNib: [UINib nibWithNibName:@"MovieCell" bundle:nil] forCellWithReuseIdentifier:@"MovieCell"];
    self.filmesCollectionView.delegate = self;
    self.filmesCollectionView.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    float cellWidth = screenWidth / 2.0; //Replace the divisor with the column count requirement. Make sure to have it in float.
    CGSize size = CGSizeMake(cellWidth, cellWidth);
    return size;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 2;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 4;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    UIImage *homeAranha = [UIImage imageNamed:@"spidey"];
    [self performSegueWithIdentifier:@"segueToDetails" sender:homeAranha];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    detailViewController* vc = [segue destinationViewController];
    vc.image = (UIImage*) sender;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MovieCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MovieCell" forIndexPath:indexPath];
    cell.movieLabel.text = @"Spoderman";
    cell.moviePoster.image = [UIImage imageNamed:@"spidey"];
    cell.yearLabel.text = @"2017";
    return cell;
}

@end
