//
//  NSString+FDStringSize.m
//  聊天界面搭建
//
//  Created by 徐忠林 on 06/06/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "NSString+FDStringSize.h"

@implementation NSString (FDStringSize)



- (CGSize)sizeOfTextWithMaxSize:(CGSize)maxSize font:(UIFont*)font {
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}


+ (CGSize)sizeWithText:(NSString *)text maxSize:(CGSize)maxSize font:(UIFont*)font {
    return [text sizeOfTextWithMaxSize:maxSize font:font];
}


@end
