//
//  LoginViewController.m
//  FilmesESeries
//
//  Created by João Gabriel  on 08/08/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTapLoginButton:(id)sender {
   [[FIRAuth auth] signInWithEmail:self.userNameTextField.text password:self.userPasswordTextField.text completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
       if (user){
           [self performSegueWithIdentifier:@"loginToHomeSegue" sender:nil];
       }
   }];
}


- (IBAction)didTabSignInButton:(id)sender {
    [self performSegueWithIdentifier:@"loginToSignInSegue" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

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
