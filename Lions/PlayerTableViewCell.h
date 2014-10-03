//
//  PlayerTableViewCell.h
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *nomPrenomLabel;
@property (strong, nonatomic) IBOutlet UILabel *rankLabel;
@property (strong, nonatomic) IBOutlet UILabel *positionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *pictureImageView;

- (void)loadImage:(NSString *)url;

@end
