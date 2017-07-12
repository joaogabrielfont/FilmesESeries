//
//  detailViewController.h
//  FilmesESeries
//
//  Created by João Gabriel  on 29/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Filmes.h"

@interface detailViewController : UIViewController
@property (weak, nonatomic) Filmes *filmeRecebido;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *filmName;
@property (weak, nonatomic) IBOutlet UILabel *filmYear;
@property (weak, nonatomic) IBOutlet UIButton *goBackButton;
@property (weak, nonatomic) IBOutlet UILabel *filmDescription;
@property (weak, nonatomic) IBOutlet UIImage *image;
@end
