//
//  ViewController.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/25.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property(nonatomic,strong) UITableView* tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView = [[UITableView alloc] initWithFrame:(self.view.frame) style:(UITableViewStylePlain)];
    self.tableView.delegate = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
