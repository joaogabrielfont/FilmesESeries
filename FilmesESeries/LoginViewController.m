//
//  LoginViewController.m
//  FilmesESeries
//
//  Created by João Gabriel  on 08/08/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import "LoginViewController.h"
#import "SignInViewController.h"
#import "FirstViewController.h"
#import "Person.h"

@interface LoginViewController () <SignInViewControllerDelegate>

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
           Person *temp = [[Person alloc]init];
           temp.username = self.userNameTextField.text;
           temp.password = nil;
           [self performSegueWithIdentifier:@"loginToHomeSegue" sender:temp];
       }
   }];
}


- (IBAction)didTabSignInButton:(id)sender {
    [self performSegueWithIdentifier:@"loginToSignInSegue" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString: @"loginToSignInSegue"]) {
        SignInViewController* vc = segue.destinationViewController;
        vc.delegate = self;
    }
    else if ([segue.identifier isEqualToString:@"loginToHomeSegue"]){
        FirstViewController* vc2 = segue.destinationViewController;
        vc2.loggedPerson = (Person*) sender;
    }
}

- (void)getSignedInPerson:(Person *)person {

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
