//
//  FirstViewController.h
//  FilmesESeries
//
//  Created by João Gabriel  on 14/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyNetworkHandler.h"
#import "MovieCell.h"
#import "detailViewController.h"

@interface FirstViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
    @property (weak, nonatomic) IBOutlet UILabel *filmesLabel;
    @property (weak, nonatomic) IBOutlet UICollectionViewCell *firstCollectionCell;
    @property (weak, nonatomic) IBOutlet UICollectionView *filmesCollectionView;
@end

