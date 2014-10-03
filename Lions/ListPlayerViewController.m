//
//  ListPlayerViewController.m
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import "ListPlayerViewController.h"
#import "PlayerTableViewCell.h"

@interface ListPlayerViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray *players;
@property (strong, nonatomic) IBOutlet UITableView *mTableView;

@end

@implementation ListPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.players = [[NSArray alloc] init];
    [self performSelectorInBackground:@selector(chargement) withObject:nil];
}

- (void)chargement {
    self.players = [Service players];
    [self.mTableView reloadData];
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PlayerTableViewCell *playerTableViewCell = (PlayerTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"playerCell"];
    
    Player *player = [self.players objectAtIndex:[indexPath row]];
    
    [[playerTableViewCell nomPrenomLabel] setText:player.nom];
    [[playerTableViewCell rankLabel] setText:[[player number] stringValue]];
    
    if ([[player position] intValue] == 0) {
        [[playerTableViewCell positionLabel] setText:@"Manager"];
    } else if ([[player position] intValue] == 1) {
        [[playerTableViewCell positionLabel] setText:@"Pitcher"];
    } else if ([[player position] intValue] == 2) {
        [[playerTableViewCell positionLabel] setText:@"Catcher"];
    } else if ([[player position] intValue] == 3) {
        [[playerTableViewCell positionLabel] setText:@"Infielder"];
    } else if ([[player position] intValue] == 4) {
        [[playerTableViewCell positionLabel] setText:@"Outfielder"];
    }
    
    [[playerTableViewCell pictureImageView] setImage:nil];
    [playerTableViewCell performSelectorInBackground:@selector(loadImage:) withObject:player.picture];
    
    return playerTableViewCell;
}

@end
