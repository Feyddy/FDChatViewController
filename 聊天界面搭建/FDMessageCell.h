//
//  FDMessageCell.h
//  聊天界面搭建
//
//  Created by 徐忠林 on 06/06/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FDMessageFrame;
@interface FDMessageCell : UITableViewCell

@property (nonatomic,strong) FDMessageFrame *messageFrame;


+ (instancetype) messageCellWithTableView:(UITableView *)tableView;
@end
