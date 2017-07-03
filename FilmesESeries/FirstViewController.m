//
//  FirstViewController.m
//  FilmesESeries
//
//  Created by João Gabriel  on 14/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()
@property NSMutableArray* nomes;
@property NSMutableArray* images;
@property (nonatomic) CGFloat leftAndRightPaddings;
@property (nonatomic) CGFloat numberOfItemsPerRow;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.filmesCollectionView registerNib: [UINib nibWithNibName:@"MovieCell" bundle:nil] forCellWithReuseIdentifier:@"MovieCell"];
    self.filmesCollectionView.delegate = self;
    self.filmesCollectionView.dataSource = self;
    
    _nomes = [[NSMutableArray alloc] init];
    _images = [[NSMutableArray alloc] init];
    
    [_nomes addObject:@"Homem Aranha: De Volta ao lar"];
    [_nomes addObject:@"Carros 3"];
    [_nomes addObject:@"Corra!"];
    [_nomes addObject:@"Mulher Maravilha"];
    
    [_images addObject:[UIImage imageNamed:@"spidey"]];
    [_images addObject:[UIImage imageNamed:@"cars"]];
    [_images addObject:[UIImage imageNamed:@"corra"]];
    [_images addObject:[UIImage imageNamed:@"wonder"]];
    
    self.leftAndRightPaddings = 0;
    self.numberOfItemsPerRow = 3.0f;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat collectionViewWidth = self.filmesCollectionView.frame.size.width;
    CGFloat itemWidth = (collectionViewWidth - self.leftAndRightPaddings) / self.numberOfItemsPerRow;
    return CGSizeMake(itemWidth-50, itemWidth*2 - 50);
}

//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    //UIEdgeInsets sectionInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    //return sectionInsets;
//}

//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForItemAtIndex:(NSInteger)section {
    //UIEdgeInsets sectionInsets2 = UIEdgeInsetsMake(0, 0, 0, 0);
    //return sectionInsets2;
//}       

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 1.0f;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 10.0f;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    UIImage *temp = [_images objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"segueToDetails" sender:temp];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    detailViewController* vc = [segue destinationViewController];
    vc.image = (UIImage*) sender;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MovieCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MovieCell" forIndexPath:indexPath];
    cell.movieLabel.text = [_nomes objectAtIndex:indexPath.row];
    cell.moviePoster.image = [_images objectAtIndex:indexPath.row];
    cell.yearLabel.text = @"2017";
    return cell;
}

@end
