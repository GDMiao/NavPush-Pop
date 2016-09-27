//
//  ViewController.m
//  NavPush&Pop
//
//  Created by 完美课酷 on 16/9/27.
//  Copyright © 2016年 MiaoGuodong. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"view A";
    self.view.backgroundColor = [UIColor cyanColor];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"右边" style:UIBarButtonItemStylePlain target:self action:@selector( pushToViewBController)];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pushToViewBController
{
    BViewController *Bview = [[BViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:Bview animated:YES];
}


@end
