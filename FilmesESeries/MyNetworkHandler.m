//
//  MyNetworkHandler.m
//  
//
//  Created by João Gabriel  on 14/06/17.
//
//

#import "MyNetworkHandler.h"
#import "AFNetworking.h"

@implementation MyNetworkHandler
    static MyNetworkHandler *sharedInstance = nil;
    static AFHTTPSessionManager *manager = nil;
    
    /*!
     * @discussion Setup a singleton of MyNetworkHandler
     * @return this instance will make all the HTTP calls.
     */
    
    
+ (MyNetworkHandler*)sharedInstance {
    if(sharedInstance == nil) {
        sharedInstance = [[self alloc] init];
        
        manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        
    }
    return sharedInstance;
}

- (void) fetchDataFromServer:(void (^) (BOOL isSuccess, NSArray *movies)) completion{
    
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", nil];
    [manager GET:@"http://www.omdbapi.com" parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        NSMutableArray *movies = [NSMutableArray new];
        for (NSDictionary *movieDict in responseObject) {
            [movies addObject:movieDict];
        }
        completion(YES, movies);

        NSLog(@"Object returned %@", movies);
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        completion(NO, nil);
        NSLog(@"Error while fetching IMDBSingleMovieData: %@", error);
    }];

}
    
    
    
@end
