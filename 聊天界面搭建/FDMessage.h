//
//  FDMessage.h
//  聊天界面搭建
//
//  Created by 徐忠林 on 06/06/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    FDMessageTypeMine = 0,
    FDMessageTypeOthers
} FDMessageType;

@interface FDMessage : NSObject

// 时间
@property (nonatomic,copy) NSString *time;

// 正文
@property (nonatomic,copy) NSString *text;

// 类型（标记自己发送的还是别人发送的)
@property (nonatomic,assign) FDMessageType type;

// 判断是否显示时间label,如果时间一样的话就不显示
@property (nonatomic,assign) BOOL isHidden;


- (instancetype)initWithMessageDictionary:(NSDictionary *)dict;

+ (instancetype)messageWithDictionary:(NSDictionary *)dict;

@end
