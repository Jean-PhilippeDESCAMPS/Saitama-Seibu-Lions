//
//  Service.m
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import "Service.h"
#import "Player.h"
#import "AppDelegate.h"
#import "Game.h"

@implementation Service

+ (NSArray *)players {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Player" inManagedObjectContext:appDelegate.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    NSError *error = nil;
    NSArray *ps = [appDelegate.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    if ([ps count] == 0) {
        NSMutableArray *players = [NSMutableArray new];
        NSURL *url = [NSURL URLWithString:@"http://jeanphilippedescamps.fr/lions/lions.php"];
        NSData *data = [NSData dataWithContentsOfURL:url];
        NSError *error;
        NSArray *objects = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        for (NSDictionary *dico in objects) {
            Player *player = [NSEntityDescription insertNewObjectForEntityForName:@"Player" inManagedObjectContext:appDelegate.managedObjectContext];
            
            [player setNumber:[NSNumber numberWithInt:[[dico objectForKey:@"rank"] intValue]]];
            [player setNom:[dico objectForKey:@"name"]];
            [player setPicture:[dico objectForKey:@"picture"]];
            [player setBirthDate:[Utils dateFromString:[dico objectForKey:@"born"] withFormat:@"m dd, yyyy"]];
            [player setTaille:[NSNumber numberWithDouble:[[dico objectForKey:@"height"] doubleValue]]];
            [player setPoids:[NSNumber numberWithDouble:[[dico objectForKey:@"weight"] doubleValue]]];
            
            if ([[dico objectForKey:@"bats"] isEqualToString:@"R"]) {
                [player setThrowHand:[NSNumber numberWithInt:0]];
            } else if ([[dico objectForKey:@"bats"] isEqualToString:@"L"]) {
                [player setThrowHand:[NSNumber numberWithInt:1]];
            }
            
            if ([[dico objectForKey:@"bats"] isEqualToString:@"R"]) {
                [player setBatterHand:[NSNumber numberWithInt:0]];
            } else if ([[dico objectForKey:@"bats"] isEqualToString:@"L"]) {
                [player setBatterHand:[NSNumber numberWithInt:1]];
            }
            
            if ([[dico objectForKey:@"position"] isEqualToString:@"Manager"]) {
                [player setPosition:[NSNumber numberWithInt:0]];
            } else if ([[dico objectForKey:@"position"] isEqualToString:@"Pitcher"]) {
                [player setPosition:[NSNumber numberWithInt:1]];
            } else if ([[dico objectForKey:@"position"] isEqualToString:@"CATCHERS"]) {
                [player setPosition:[NSNumber numberWithInt:2]];
            } else if ([[dico objectForKey:@"position"] isEqualToString:@"INFIELDERS"]) {
                [player setPosition:[NSNumber numberWithInt:3]];
            } else if ([[dico objectForKey:@"position"] isEqualToString:@"OUTFIELDERS"]) {
                [player setPosition:[NSNumber numberWithInt:4]];
            }
            
            [players addObject:player];
        }
        
        [appDelegate saveContext];
        
        return players;
    } else {
        return ps;
    }
}

+ (Game *)gameForId:(int)gameId {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    NSString *urlString = [NSString stringWithFormat:@"http://jeanphilippedescamps.fr/lions/score.php?id=%d", gameId];
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSError *error;
    NSArray *objects = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSDictionary *object = [objects objectAtIndex:0];
    Game *game = [NSEntityDescription insertNewObjectForEntityForName:@"Game" inManagedObjectContext:appDelegate.managedObjectContext];
    
    [game setGameId:[NSNumber numberWithInt:[[object objectForKey:@"id"] intValue]]];
    [game setStade:[object objectForKey:@"stade"]];
    [game setGameDate:[Utils dateFromString:[object objectForKey:@"date"] withFormat:@"yyyy-mm-dd HH:MM:ss"]];
    [game setTemperature:[NSNumber numberWithDouble:[[object objectForKey:@"temperature"] doubleValue]]];
    
    [game setScore1Home:[object objectForKey:@"score1Home"]];
    [game setScore2Home:[object objectForKey:@"score2Home"]];
    [game setScore3Home:[object objectForKey:@"score3Home"]];
    [game setScore4Home:[object objectForKey:@"score4Home"]];
    [game setScore5Home:[object objectForKey:@"score5Home"]];
    [game setScore6Home:[object objectForKey:@"score6Home"]];
    [game setScore7Home:[object objectForKey:@"score7Home"]];
    [game setScore8Home:[object objectForKey:@"score8Home"]];
    [game setScore9Home:[object objectForKey:@"score9Home"]];
    [game setScore10Home:[object objectForKey:@"score10Home"]];
    [game setScore11Home:[object objectForKey:@"score11Home"]];
    [game setScore12Home:[object objectForKey:@"score12Home"]];
    [game setScoreRHome:[object objectForKey:@"scoreRHome"]];
    [game setScoreHHome:[object objectForKey:@"scoreHHome"]];
    [game setScoreEHome:[object objectForKey:@"scoreEHome"]];
    
    [game setScore1Extern:[object objectForKey:@"score1Visitor"]];
    [game setScore2Extern:[object objectForKey:@"score2Visitor"]];
    [game setScore3Extern:[object objectForKey:@"score3Visitor"]];
    [game setScore4Extern:[object objectForKey:@"score4Visitor"]];
    [game setScore5Extern:[object objectForKey:@"score5Visitor"]];
    [game setScore6Extern:[object objectForKey:@"score6Visitor"]];
    [game setScore7Extern:[object objectForKey:@"score7Visitor"]];
    [game setScore8Extern:[object objectForKey:@"score8Visitor"]];
    [game setScore9Extern:[object objectForKey:@"score9Visitor"]];
    [game setScore10Extern:[object objectForKey:@"score10Visitor"]];
    [game setScore11Extern:[object objectForKey:@"score11Visitor"]];
    [game setScore12Extern:[object objectForKey:@"score12Visitor"]];
    [game setScoreRExtern:[object objectForKey:@"scoreRVisitor"]];
    [game setScoreHExtern:[object objectForKey:@"scoreHVisitor"]];
    [game setScoreEExtern:[object objectForKey:@"scoreEVisitor"]];
    
    [appDelegate saveContext];
    
    return game;
}

@end
