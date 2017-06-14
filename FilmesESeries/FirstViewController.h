//
//  FirstViewController.h
//  FilmesESeries
//
//  Created by João Gabriel  on 14/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyNetworkHandler.h"

@interface FirstViewController : UIViewController
    @property (weak, nonatomic) IBOutlet UILabel *filmesLabel;
    @property (weak, nonatomic) IBOutlet UICollectionView *filmesCollectionView;
@end

