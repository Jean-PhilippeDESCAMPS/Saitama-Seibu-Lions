//
//  Service.h
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Game;

@interface Service : NSObject

+ (NSArray *)players;

+ (Game *)gameForId:(int)gameId;

@end
