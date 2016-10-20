//
//  ViewController.m
//  2-JSON原生解析复杂数据
//
//  Created by 赵金鹏 on 2016/10/9.
//  Copyright © 2016年 赵金鹏. All rights reserved.
//

#import "ViewController.h"
#import "YYModel.h"
#import "Message.h"
#import "XiaoHua1.h"
#import "XiaoHua2.h"
#import "XiaoHua3.h"
#import "XiaoHua4.h"
#import "MessageModel.h"
#import "Data.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self test6];
}
//数组转模型
- (void)test1{
    
    NSData *data = [self request:@"head.json"];
    
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSArray *dataList = [NSArray yy_modelArrayWithClass:[Message class] json:array];
    
    for (Message *mes in dataList) {
        NSLog(@"%@",mes.CommodityText);
    }
}

//字典转模型
- (void)test2{
    
    /*
     {
        "error_code": 0,
        "reason": "Success",
        "name": "笑话"
     }
     */
    NSData *data = [self request:@"xiaohua1.json"];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    XiaoHua1 *xiahua = [XiaoHua1 yy_modelWithDictionary:dic];
    
    NSLog(@"%@--%@---%li",xiahua.name,xiahua.reason,xiahua.error_code);
}

//更换属性名字
- (void)test3{
    NSData *data = [self request:@"xiaohua1.json"];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    XiaoHua2 *xiahua = [XiaoHua2 yy_modelWithDictionary:dic];
    
    NSLog(@"%@--%@---%li",xiahua.XiaoHua2Name,xiahua.reason,xiahua.error_code);
}
//复杂容器类模型转换
- (void)test4{
    NSData *data = [self request:@"xiaohua.json"];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    MessageModel *message = [MessageModel yy_modelWithDictionary:dic];
    
    for (Data *dat in message.data) {
        NSLog(@"%@",dat.content);
    }
}

//黑名单
- (void)test5{
    NSData *data = [self request:@"xiaohua.json"];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    XiaoHua3 *message = [XiaoHua3 yy_modelWithDictionary:dic];
    
    NSLog(@"%@",message.reason);
}
//白名单
- (void)test6{
    NSData *data = [self request:@"xiaohua.json"];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    XiaoHua4 *message = [XiaoHua4 yy_modelWithDictionary:dic];
    
    NSLog(@"%@---%@",message.reason,message.data);
}
- (NSData *)request:(NSString *)name{
    
    NSString *urlString = [NSString stringWithFormat:@"http://192.168.1.122/%@",name];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLResponse *response = nil;
    
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    
    return data;
}

@end









