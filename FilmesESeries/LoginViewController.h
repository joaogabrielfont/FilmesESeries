//
//  LoginViewController.h
//  FilmesESeries
//
//  Created by João Gabriel  on 08/08/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@import FirebaseAuth;

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordTextField;

@end
