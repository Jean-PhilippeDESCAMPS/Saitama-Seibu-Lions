//
//  Game.h
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 03/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Team;

@interface Game : NSManagedObject

@property (nonatomic, retain) NSDate * gameDate;
@property (nonatomic, retain) NSNumber * gameId;
@property (nonatomic, retain) NSString * score1Extern;
@property (nonatomic, retain) NSString * score1Home;
@property (nonatomic, retain) NSString * score2Extern;
@property (nonatomic, retain) NSString * score2Home;
@property (nonatomic, retain) NSString * score3Extern;
@property (nonatomic, retain) NSString * score3Home;
@property (nonatomic, retain) NSString * score4Extern;
@property (nonatomic, retain) NSString * score4Home;
@property (nonatomic, retain) NSString * score5Extern;
@property (nonatomic, retain) NSString * score5Home;
@property (nonatomic, retain) NSString * score6Extern;
@property (nonatomic, retain) NSString * score6Home;
@property (nonatomic, retain) NSString * score7Extern;
@property (nonatomic, retain) NSString * score7Home;
@property (nonatomic, retain) NSString * score8Extern;
@property (nonatomic, retain) NSString * score8Home;
@property (nonatomic, retain) NSString * score9Extern;
@property (nonatomic, retain) NSString * score9Home;
@property (nonatomic, retain) NSString * score10Extern;
@property (nonatomic, retain) NSString * score10Home;
@property (nonatomic, retain) NSString * score11Extern;
@property (nonatomic, retain) NSString * score11Home;
@property (nonatomic, retain) NSString * score12Extern;
@property (nonatomic, retain) NSString * score12Home;
@property (nonatomic, retain) NSString * scoreEExtern;
@property (nonatomic, retain) NSString * scoreEHome;
@property (nonatomic, retain) NSString * scoreHExtern;
@property (nonatomic, retain) NSString * scoreHHome;
@property (nonatomic, retain) NSString * scoreRExtern;
@property (nonatomic, retain) NSString * scoreRHome;
@property (nonatomic, retain) NSString * stade;
@property (nonatomic, retain) NSNumber * temperature;
@property (nonatomic, retain) Team *externTeam;
@property (nonatomic, retain) Team *homeTeam;

@end
