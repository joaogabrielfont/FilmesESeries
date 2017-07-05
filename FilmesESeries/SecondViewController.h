//
//  SecondViewController.h
//  FilmesESeries
//
//  Created by João Gabriel  on 14/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
    @property (weak, nonatomic) IBOutlet UILabel *seriesLabel;
    @property (weak, nonatomic) IBOutlet UIImageView *filmesImage;
    @property (weak, nonatomic) IBOutlet UICollectionView *seriesCollectionView;

@end

