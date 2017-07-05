//
//  SecondViewController.m
//  FilmesESeries
//
//  Created by João Gabriel  on 14/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic) CGFloat numberOfItensPerRow;
@property NSMutableArray* images;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.numberOfItensPerRow = 4.0f;
    self.seriesCollectionView.delegate = self;
    self.seriesCollectionView.dataSource = self;
    self.images = [[NSMutableArray alloc] init];
    
    [self.images addObject:[UIImage imageNamed:@"spidey"]];
    [self.images addObject:[UIImage imageNamed:@"cars"]];
    [self.images addObject:[UIImage imageNamed:@"corra"]];
    [self.images addObject:[UIImage imageNamed:@"wonder"]];
    // Do any additional setup after loading the view, typically from a nib.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    //self.filmesImage.image = [self.images objectAtIndex:indexPath.row];
    cell.backgroundColor = [UIColor blueColor];
    
    return cell;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 8;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat collectionViewWidth = self.seriesCollectionView.frame.size.width;
    CGFloat itemWidth = (collectionViewWidth/ self.numberOfItensPerRow);
    return CGSizeMake(itemWidth+26.583, itemWidth*2);
}

- (CGFloat)collectionView:(UICollectionView *) collectionView layout:(UICollectionViewLayout *)collectionViewLayout
minimumInteritemSpacingForSectionAtIndex:(NSInteger) section
{
    return 1.0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
