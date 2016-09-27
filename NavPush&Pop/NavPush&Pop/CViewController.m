//
//  CViewController.m
//  NavPush&Pop
//
//  Created by 完美课酷 on 16/9/27.
//  Copyright © 2016年 MiaoGuodong. All rights reserved.
//

#import "CViewController.h"
#import "ViewController.h"
@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"View C";
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"左边" style:UIBarButtonItemStylePlain target:self action:@selector(popToAViewController)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)popToAViewController
{
    [self.navigationController popViewControllerAnimated:YES];
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
