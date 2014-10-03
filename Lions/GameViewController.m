//
//  GameViewController.m
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import "GameViewController.h"
#import "Game.h"

@interface GameViewController ()
@property (strong, nonatomic) IBOutlet UILabel *homeTeamLabel;
@property (strong, nonatomic) IBOutlet UILabel *externTeamLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UIImageView *homeTeamImageView;
@property (strong, nonatomic) IBOutlet UIImageView *externTeamImageView;

@property (strong, nonatomic) IBOutlet UILabel *stadeLabel;
@end

@implementation GameViewController

@synthesize gameId;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self performSelectorInBackground:@selector(chargement) withObject:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)chargement {
    Game *game = [Service gameForId:gameId];
    
    [self.temperatureLabel setText:[[game temperature] stringValue]];
    [self.stadeLabel setText:[game stade]];
    [self.dateLabel setText:[Utils stringFromDate:[game gameDate]]];
}


@end
