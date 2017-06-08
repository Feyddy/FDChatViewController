//
//  FDMessageFrame.h
//  聊天界面搭建
//
//  Created by 徐忠林 on 06/06/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@class FDMessage;

@interface FDMessageFrame : NSObject

// 数据模型
@property (nonatomic,strong) FDMessage *message;

// 时间label的frame
@property (nonatomic,assign) CGRect timeLabelFrame;

// 正文label的frame
@property (nonatomic,assign) CGRect textLabelFrame;

// 头像的frame
@property (nonatomic,assign) CGRect iconFrame;

// cell高度
@property (nonatomic,assign) CGFloat cellHeight;

@end
