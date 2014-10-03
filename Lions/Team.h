//
//  Team.h
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 03/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Game, Player;

@interface Team : NSManagedObject

@property (nonatomic, retain) NSString * logo;
@property (nonatomic, retain) NSString * nom;
@property (nonatomic, retain) NSNumber * rank;
@property (nonatomic, retain) NSSet *gameExtern;
@property (nonatomic, retain) NSSet *gameHome;
@property (nonatomic, retain) NSSet *player;
@end

@interface Team (CoreDataGeneratedAccessors)

- (void)addGameExternObject:(Game *)value;
- (void)removeGameExternObject:(Game *)value;
- (void)addGameExtern:(NSSet *)values;
- (void)removeGameExtern:(NSSet *)values;

- (void)addGameHomeObject:(Game *)value;
- (void)removeGameHomeObject:(Game *)value;
- (void)addGameHome:(NSSet *)values;
- (void)removeGameHome:(NSSet *)values;

- (void)addPlayerObject:(Player *)value;
- (void)removePlayerObject:(Player *)value;
- (void)addPlayer:(NSSet *)values;
- (void)removePlayer:(NSSet *)values;

@end
