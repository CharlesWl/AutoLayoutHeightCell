//
//  ViewController.m
//  Auto Layout和适配不等高复合型cell
//
//  Created by charles on 16/3/8.
//  Copyright © 2016年 Charles_Wl. All rights reserved.
//

#import "ViewController.h"
#import "WLTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *WLTV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  真的可以啦！！！！！试试看
     */
    self.WLTV.delegate = self;
    self.WLTV.dataSource = self;
//    UINib *nib = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
//    [self.WLTV registerNib:nib forCellReuseIdentifier:cellIdentfier];
    UINib *nib = [UINib nibWithNibName:@"WLTableViewCell" bundle:nil];
    [self.WLTV registerNib:nib forCellReuseIdentifier:wlcellIdentfier];
    self.WLTV.estimatedRowHeight = 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WLTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:wlcellIdentfier forIndexPath:indexPath];
    cell.mainLabel.hidden = NO;
    cell.image1.hidden = NO;
    cell.image2.hidden = NO;
    cell.image3.hidden = NO;
    switch (indexPath.row) {
        case 0:
            cell.mainLabel.text = @"";
            cell.mainLabel.hidden = YES;
            break;
            
        case 1:
            cell.mainLabel.text = @"TableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.h";
            cell.image1.hidden = YES;
            cell.image2.hidden = YES;
            cell.image3.hidden = YES;
            break;
        case 2:
            
            cell.mainLabel.text = @"TableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.h";
            cell.image2.hidden = YES;
            cell.image3.hidden = YES;
            break;
        case 3:

            cell.mainLabel.text = @"TableViewCell.hTableViewCell.hTableViewCell.h? UILayoutPriorityDefaultLow : UILayoutPriorityDefaultHigh ;? UILayoutPriorityDefaultLow : UILayoutPriorityDefaultHigh ;? UILayoutPriorityDefaultLow : UILayoutPriorityDefaultHigh ;";
            break;
        case 4:
            cell.mainLabel.text = @"TableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.h";
            cell.image1.hidden = YES;
            cell.image2.hidden = YES;
            cell.image3.hidden = YES;
            break;
        case 5:
            cell.mainLabel.text = @"TableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.h";
            break;
        case 6:
            cell.mainLabel.text = @"TableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.h";
            break;
        case 7:

            cell.mainLabel.text = @"";
            cell.mainLabel.hidden = YES;
            cell.image3.hidden = YES;
            break;
        case 8:
            cell.mainLabel.text = @"";
            cell.mainLabel.hidden = YES;
            cell.image2.hidden = YES;
            cell.image3.hidden = YES;
            break;
        case 9:
            cell.mainLabel.text = @"TableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.hTableViewCell.h";
            cell.image1.hidden = YES;
            cell.image2.hidden = YES;
            cell.image3.hidden = YES;
            break;
    }
    cell.labelConstraint.priority = cell.mainLabel.hidden ? UILayoutPriorityDefaultLow : UILayoutPriorityDefaultHigh ;
    cell.fuwuContraint.priority = cell.image1.hidden ? UILayoutPriorityDefaultLow : UILayoutPriorityDefaultHigh ;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
