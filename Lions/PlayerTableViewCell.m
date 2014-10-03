//
//  PlayerTableViewCell.m
//  Lions
//
//  Created by Jean-Philippe DESCAMPS on 02/10/2014.
//  Copyright (c) 2014 Jean-Philippe DESCAMPS. All rights reserved.
//

#import "PlayerTableViewCell.h"

@implementation PlayerTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)loadImage:(NSString *)url {
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    if (data != nil) {
        UIImage *image = [UIImage imageWithData:data];
        [self.pictureImageView setImage:image];
    }
}

@end
