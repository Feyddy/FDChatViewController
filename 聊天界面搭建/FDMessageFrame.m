//
//  FDMessageFrame.m
//  聊天界面搭建
//
//  Created by 徐忠林 on 06/06/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "FDMessageFrame.h"
#import "NSString+FDStringSize.h"
#import "FDMessage.h"

@implementation FDMessageFrame

- (void)setMessage:(FDMessage *)message {
    _message = message;
    
    // 计算frame
    // 获取屏宽
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    
    // 间距
    CGFloat marginW = 5;
    
    // 时间label的frame
    CGFloat timeX = 0;
    CGFloat timeY = 0;
    CGFloat timeW = screenW;
    CGFloat timeH = 20;
    
    // 判断时间是否显示
    if (message.isHidden) {
        _timeLabelFrame = CGRectMake(timeX, timeY, timeW, 0);

    }else {
        _timeLabelFrame = CGRectMake(timeX, timeY, timeW, timeH);

    }
    
    // 头像的frame
    CGFloat iconW = 30;
    CGFloat iconH = 30;
    CGFloat iconY = CGRectGetMaxY(_timeLabelFrame) + marginW;
    CGFloat iconX = message.type == FDMessageTypeMine ? (screenW - marginW - iconW) : marginW;
    _iconFrame = CGRectMake(iconX, iconY, iconW, iconH);
    
    
    // 正文的frame
    CGSize textSize = [message.text sizeOfTextWithMaxSize:CGSizeMake(200, MAXFLOAT) font:[UIFont systemFontOfSize:14]];
    
    CGFloat textW = textSize.width + 40 ;
    CGFloat textH = textSize.height + 30;
    
    CGFloat textY = iconY;
    CGFloat textX = message.type == FDMessageTypeMine ? (screenW - marginW - iconW - textW) : CGRectGetMaxX(_iconFrame);
    _textLabelFrame = CGRectMake(textX, textY, textW, textH);
    
    // 行高，头像和正文那个大，返回那个
    _cellHeight = MAX(CGRectGetMaxY(_textLabelFrame), CGRectGetMaxY(_iconFrame))  + marginW;
    
    
}

@end
