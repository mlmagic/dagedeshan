//
//  MessageModel.m
//  2-JSON原生解析复杂数据
//
//  Created by 赵金鹏 on 2016/10/9.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "MessageModel.h"
#import "Data.h"
@implementation MessageModel

+ (NSDictionary *)modelContainerPropertyGenericClass {

    return @{@"data":[Data class]};
}

@end
