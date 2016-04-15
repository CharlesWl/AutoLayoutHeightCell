//
//  TableViewCell.h
//  Auto Layout和适配不等高复合型cell
//
//  Created by charles on 16/3/8.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import <UIKit/UIKit.h>
#define cellIdentfier @"cellIdentfier"
@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageBottonConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pictureConstraint;
@property (weak, nonatomic) IBOutlet UIImageView *pictureIV;

@end
