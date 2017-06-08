//
//  FDMessage.m
//  聊天界面搭建
//
//  Created by 徐忠林 on 06/06/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "FDMessage.h"

@implementation FDMessage

- (instancetype)initWithMessageDictionary:(NSDictionary *)dict {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        
    }
    return self;
}

+ (instancetype)messageWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithMessageDictionary:dict];
}


@end
