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
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    float cellWidth = screenWidth / 4.0f; //Replace the divisor with the column count requirement. Make sure to have it in float.
    CGSize size = CGSizeMake(127, 207);
    return size;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
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
