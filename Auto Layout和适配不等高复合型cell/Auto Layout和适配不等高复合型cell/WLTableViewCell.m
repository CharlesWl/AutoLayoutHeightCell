//
//  WLTableViewCell.m
//  Auto Layout和适配不等高复合型cell
//
//  Created by charles on 16/3/8.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "WLTableViewCell.h"
#import "POP.h"

@interface WLTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *riliLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation WLTableViewCell

- (void)awakeFromNib {
    self.accessoryType  = UITableViewCellAccessoryDisclosureIndicator;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    _nameLabel.layer.masksToBounds = YES;
    _riliLabel.layer.masksToBounds = YES;
    _contentLabel.layer.masksToBounds = YES;
    _timeLabel.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    POPSpringAnimation *scaleAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    scaleAnimation.toValue             = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    scaleAnimation.velocity            = [NSValue valueWithCGPoint:CGPointMake(2, 2)];
    scaleAnimation.springBounciness    = 20.f;
    [_contentLabel pop_addAnimation:scaleAnimation forKey:@"scaleAnimation"];

}

@end
