//
//  RootViewController.m
//  SundayDemo
//
//  Created by MACHUNLEI on 2017/6/3.
//  Copyright © 2017年 MACHUNLEI. All rights reserved.
//

#import "RootViewController.h"
#import "LHPerformanceMonitorService.h"

@interface RootViewController ()

@end

@implementation RootViewController

#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

/**
 * iOS 合理利用Clang警告来提高代码质量: 用语句强制开启或者关闭某个警告
 */
- (void)test1 {
//    // 强制开启一个警告
//#warning "This method can not be used"
//    // 强制开启一个错误
//#error "You must add this key,or you will fail"
//    
//    // 强制关闭一个警告
//#pragma clang diagnostic push
//#pragma clang diagnostic ignored "-Wundeclared-selector"
//    [self performSelector:@selector(test) withObject:nil];// 这里会出现警告test这个selector没有实现
//#pragma clang diagnostic pop
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [LHPerformanceMonitorService run];
}

- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}

#pragma mark - Public

#pragma mark - Private
- (void)setupView {}

- (void)setupData {}

#pragma mark - <#注释部分#>

#pragma mark - <#注释部分#>

#pragma mark - <#注释部分#>

#pragma mark - <#注释部分#>

#pragma mark - <#注释部分#>

#pragma mark - Getter&&Setter

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
