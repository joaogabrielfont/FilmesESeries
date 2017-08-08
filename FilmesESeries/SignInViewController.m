//
//  SignInViewController.m
//  FilmesESeries
//
//  Created by João Gabriel  on 08/08/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "SignInViewController.h"
#import "Person.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTapSignInButton:(id)sender {
    Person* person = [[Person alloc] init];
    person.username = self.userNameTextField2.text;
    person.password = self.passwordTextField2.text;
    [[FIRAuth auth] createUserWithEmail:person.username password:person.password completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
        if (user){
            [self dismissViewControllerAnimated:YES completion:nil];
        }
        else {
        
        
        }
    }];
    
    
}
- (IBAction)didTapCloseButton:(id)sender {
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
