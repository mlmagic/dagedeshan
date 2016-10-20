//
//  MessageModel.h
//  2-JSON原生解析复杂数据
//
//  Created by 赵金鹏 on 2016/10/9.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageModel : NSObject

@property (assign, nonatomic) NSInteger error_code;

@property (copy, nonatomic) NSString *reason;

@property (strong, nonatomic) NSArray *data;


@end
