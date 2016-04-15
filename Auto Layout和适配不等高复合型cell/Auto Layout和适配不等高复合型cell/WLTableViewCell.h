//
//  WLTableViewCell.h
//  Auto Layout和适配不等高复合型cell
//
//  Created by charles on 16/3/8.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import <UIKit/UIKit.h>
#define wlcellIdentfier @"wlcellIdentfier"
@interface WLTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *fuwuContraint;

@end
