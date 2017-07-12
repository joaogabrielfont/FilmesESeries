//
//  detailViewController.m
//  FilmesESeries
//
//  Created by João Gabriel  on 29/06/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "detailViewController.h"

@interface detailViewController ()

@end

@implementation detailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.posterView.image = self.filmeRecebido.poster;
    self.filmName.text = self.filmeRecebido.name;
    self.filmYear.text = self.filmeRecebido.year;
    self.filmDescription.text = self.filmeRecebido.resume;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBackButtonAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
