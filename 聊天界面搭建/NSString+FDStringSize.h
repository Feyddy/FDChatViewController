//
//  NSString+FDStringSize.h
//  聊天界面搭建
//
//  Created by 徐忠林 on 06/06/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (FDStringSize)


- (CGSize)sizeOfTextWithMaxSize:(CGSize)maxSize font:(UIFont*)font;


+ (CGSize)sizeWithText:(NSString *)text maxSize:(CGSize)maxSize font:(UIFont*)font;

@end
