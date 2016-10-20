//
//  Data.h
//  2-JSON原生解析复杂数据
//
//  Created by 赵金鹏 on 2016/10/9.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

@property (strong, nonatomic)   NSString *content;

@property (strong, nonatomic)   NSString *hashId;

@property (assign, nonatomic)   NSInteger unixtime;

@property (strong, nonatomic)   NSString *updatetime;


@end
