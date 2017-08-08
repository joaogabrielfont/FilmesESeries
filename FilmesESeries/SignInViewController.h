//
//  SignInViewController.h
//  FilmesESeries
//
//  Created by João Gabriel  on 08/08/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import <UIKit/UIKit.h>
@import FirebaseAuth;

@interface SignInViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField2;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField2;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordTextField2;

@end
