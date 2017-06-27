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
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.view.frame.size.width/2, self.view.frame.size.height);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 1;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    UIImageView *image = [[UIImageView alloc]init];
    UILabel *label = [[UILabel alloc] init];
    label.text = @"please something happen";
    [cell addSubview:label];
    image.image = [UIImage imageNamed:@"spidey.jpg"];
    image.frame = CGRectMake(0, 0, cell.frame.size.width, cell.frame.size.height);
    [cell addSubview:image];
    return cell;
}

@end
