//
//  Player.h
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 03/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Team;

@interface Player : NSManagedObject

@property (nonatomic, retain) NSNumber * batterHand;
@property (nonatomic, retain) NSDate * birthDate;
@property (nonatomic, retain) NSString * nom;
@property (nonatomic, retain) NSNumber * number;
@property (nonatomic, retain) NSString * picture;
@property (nonatomic, retain) NSNumber * poids;
@property (nonatomic, retain) NSNumber * position;
@property (nonatomic, retain) NSNumber * taille;
@property (nonatomic, retain) NSNumber * throwHand;
@property (nonatomic, retain) Team *team;

@end
