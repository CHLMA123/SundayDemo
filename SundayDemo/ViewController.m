//
//  ViewController.m
//  SundayDemo
//
//  Created by MACHUNLEI on 2017/6/3.
//  Copyright © 2017年 MACHUNLEI. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // UILable显示多行时，首行空两个字符
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 69, 300, 50)];
    NSMutableParagraphStyle *paraStyle01 = [[NSMutableParagraphStyle alloc] init];
    paraStyle01.alignment = NSTextAlignmentLeft;  //对齐
    paraStyle01.headIndent = 0.0f;//行首缩进
    //参数：（字体大小17号字乘以2，34f即首行空出两个字符）
    CGFloat emptylen = lbl.font.pointSize * 2;
    
    paraStyle01.firstLineHeadIndent = emptylen;//首行缩进
    paraStyle01.tailIndent = 0.0f;//行尾缩进
    paraStyle01.lineSpacing = 2.0f;//行间距
    NSAttributedString *attrText = [[NSAttributedString alloc] initWithString:@"保持身材说不出是不说是吧香水百合不喜欢上班还不熟悉不好说必须不是不喜欢上班好像是" attributes:@{NSParagraphStyleAttributeName:paraStyle01}];
    lbl.attributedText = attrText;
    lbl.textColor = [UIColor redColor];
    lbl.numberOfLines = 0;
    [self.view addSubview:lbl];
    
    
//    // iOS 获取手机安装的APP的信息
//    Class c = NSClassFromString(@"LSApplicationWorkspace");
//    id s = [(id)c performSelector:NSSelectorFromString(@"defaultWorkspace")];
//    NSArray *array = [(id)s performSelector:NSSelectorFromString(@"allInstalledApplications")];
//    for (id item in array) {
//        NSLog(@"%@",[item performSelector:NSSelectorFromString(@"applicationIdentifier")]);
//        NSLog(@"%@",[item performSelector:NSSelectorFromString(@"bundleIdentifier")]);
//        NSLog(@"%@",[item performSelector:NSSelectorFromString(@"bundleVersion")]);
//        NSLog(@"%@",[item performSelector:NSSelectorFromString(@"shortVersionString")]);
//        NSLog(@"%@\n\n\n",[item performSelector:NSSelectorFromString(@"itemName")]);
//    }
}

-(NSInteger)randomLessThanTen{
    return arc4random()%10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    RootViewController *vc = [[RootViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
