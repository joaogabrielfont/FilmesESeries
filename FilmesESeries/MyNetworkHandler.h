//
//  MyNetworkHandler.h
//  
//
//  Created by João Gabriel  on 14/06/17.
//
//

#import <Foundation/Foundation.h>

@interface MyNetworkHandler : NSObject
    @property (strong, nonatomic) NSDictionary* movieData;
    +(MyNetworkHandler*) sharedInstance;
    - (void) fetchDataFromServer:(void (^) (BOOL isSuccess, NSArray *movies)) completion;
@end
