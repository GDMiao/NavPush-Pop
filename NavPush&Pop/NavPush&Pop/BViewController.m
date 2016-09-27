//
//  BViewController.m
//  NavPush&Pop
//
//  Created by 完美课酷 on 16/9/27.
//  Copyright © 2016年 MiaoGuodong. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"
#import "ViewController.h"
@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"view B";
    self.view.backgroundColor = [UIColor purpleColor];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"右边" style:UIBarButtonItemStylePlain target:self action:@selector( pushToViewCController)];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pushToViewCController
{
    
    CViewController *Cview = [[CViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:Cview animated:YES];
    // viewControllers 是不可变数组
    // 要插入就要转换为 NSMutableArray
    NSMutableArray *tempMarr = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    
//    [tempMarr insertObject:[ViewController new] atIndex:tempMarr.count - 2]; // 可插入任何控制器 [ A,A,B,C] 这里插入一个 A
    [tempMarr removeObject:self]; // remove 本身 控制器B
//    [tempMarr removeObjectAtIndex:0]; // remove 控制器A （这里因为我插入了一个控制器A ，veiwcontrollers = [A,A,C] 为了不出现 A pop A 这里删除了 第一个 A ）
    [self.navigationController setViewControllers:tempMarr animated:YES];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
