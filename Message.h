//
//  Message.h
//  1-JSON解析
//
//  Created by 赵金鹏 on 2016/10/9.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property (copy, nonatomic) NSString *CommodityText;

@property (assign, nonatomic) NSInteger IfMiddlePage;

@property (copy, nonatomic) NSString *ImgView;

@property (copy, nonatomic) NSString *RelatedId;

@end
