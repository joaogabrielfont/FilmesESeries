//
//  FirstViewController.m
//  FilmesESeries
//
//  Created by João Gabriel  on 14/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "FirstViewController.h"
#import "Filmes.h"
#import "Person.h"


@interface FirstViewController ()
@property NSMutableArray* filmes;
@property (nonatomic) CGFloat leftAndRightPaddings;
@property (nonatomic) CGFloat numberOfItemsPerRow;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.filmesCollectionView registerNib: [UINib nibWithNibName:@"MovieCell" bundle:nil] forCellWithReuseIdentifier:@"MovieCell"];
    self.filmesCollectionView.delegate = self;
    self.filmesCollectionView.dataSource = self;
    Filmes *film = [[Filmes alloc]init];
    self.filmes = [[NSMutableArray alloc] initWithArray:film.fillArrayWithMovies];
    self.nameLabel.text = self.loggedPerson.username;
    
    
    self.leftAndRightPaddings = 0;
    self.numberOfItemsPerRow = 3.0f;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat collectionViewWidth = self.filmesCollectionView.frame.size.width;
    CGFloat itemWidth = (collectionViewWidth/ self.numberOfItemsPerRow);
    return CGSizeMake((itemWidth/2)+19,itemWidth);
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
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 14;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    Filmes *temp  = [self.filmes objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"segueToDetails" sender:temp];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    detailViewController* vc = [segue destinationViewController];
    vc.filmeRecebido = (Filmes*) sender;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MovieCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MovieCell" forIndexPath:indexPath];
    cell.moviePoster.image = [[self.filmes objectAtIndex:indexPath.row] poster];
    cell.movieLabel.text = [[self.filmes objectAtIndex:indexPath.row] name];
    return cell;
}

@end
