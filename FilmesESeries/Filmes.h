//
//  Filmes.h
//  FilmesESeries
//
//  Created by João Gabriel  on 12/07/17.
//  Copyright © 2017 fontana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Filmes : NSObject
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) UIImage* poster;
@property (strong, nonatomic) NSString* year;
@property (strong, nonatomic) NSString* resume;



- (NSMutableArray*) fillArrayWithMovies;

@end
