//
//  ViewController.m
//  RadioBoxDemo
//
//  Created by 李晓璐 on 2017/12/28.
//  Copyright © 2017年 onmmc. All rights reserved.
//

#import "ViewController.h"
#import "RadioBoxFun.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RadioBoxFun *radioBox = [RadioBoxFun new];
    UIButton *btn0 =  [radioBox creatButton:CGRectMake(16, 40, (WIDTH-50-32)/3-5, 22) title:@"不限"];
    UIButton *btn1 =  [radioBox creatButton:CGRectMake((WIDTH-50-32)/3+16, 40, (WIDTH-50-32)/3-5, 22) title:@"已签约"];
    UIButton *btn2 =  [radioBox creatButton:CGRectMake((WIDTH-50-32)/3*2+16, 40, (WIDTH-50-32)/3-5, 22) title:@"已注册"];
    UIButton *btn3 =  [radioBox creatButton:CGRectMake(16, 40+22+10, (WIDTH-50-32)/3-5, 22) title:@"待联系"];
    UIButton *btn4 =  [radioBox creatButton:CGRectMake((WIDTH-50-32)/3+16, 40+22+10, (WIDTH-50-32)/3-5, 22) title:@"无效"];
    [radioBox radioBoxButtons:@[btn0,btn1,btn2,btn3,btn4]  superView:self.view defultSelectedInde:0 callBack:^(NSInteger selectIndex, NSString *title) {
        NSLog(@"%ld-----%@",(long)selectIndex,title);
    }];
    

    
    
    RadioBoxFun *radioBox0 = [RadioBoxFun new];
    UIButton *btn00 =  [radioBox0 creatButton:CGRectMake(16, 140, (WIDTH-50-32)/3-5, 22) title:@"0不限"];
    UIButton *btn01 =  [radioBox0 creatButton:CGRectMake((WIDTH-50-32)/3+16, 140, (WIDTH-50-32)/3-5, 22) title:@"0已签约"];
    UIButton *btn02 =  [radioBox0 creatButton:CGRectMake((WIDTH-50-32)/3*2+16, 140, (WIDTH-50-32)/3-5, 22) title:@"0已注册"];
    UIButton *btn03 =  [radioBox0 creatButton:CGRectMake(16, 140+22+10, (WIDTH-50-32)/3-5, 22) title:@"0待联系"];
    UIButton *btn04 =  [radioBox0 creatButton:CGRectMake((WIDTH-50-32)/3+16, 140+22+10, (WIDTH-50-32)/3-5, 22) title:@"0无效"];
    [radioBox0 radioBoxButtons:@[btn00,btn01,btn02,btn03,btn04]  superView:self.view defultSelectedInde:1 callBack:^(NSInteger selectIndex, NSString *title) {
        NSLog(@"%ld-----%@",(long)selectIndex,title);
    }];
}

@end
