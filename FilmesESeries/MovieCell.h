//
//  MovieCell.h
//  FilmesESeries
//
//  Created by João Gabriel  on 29/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *moviePoster;
@property (weak, nonatomic) IBOutlet UILabel *movieLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearLabel;

@end
