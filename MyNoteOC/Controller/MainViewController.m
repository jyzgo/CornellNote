//
//  ViewController.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/25.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "MainViewController.h"
#import "WBTableView.h"
#import "WBTableViewModel.h"
#import "SceneMgr.h"
#import "SelectViewController.h"


@interface MainViewController ()
@property(nonatomic,strong) WBTableView* tableView;
@property(nonatomic,strong) WBTableViewModel *model;




@end

@implementation MainViewController




- (void)viewDidLoad {
    [super viewDidLoad];

  
    
//    [self setTitle:@"Test"];
//    [self.view setBackgroundColor:[UIColor whiteColor]];
//    // Do any additional setup after loading the view, typically from a nib.
//    [self setModel:[WBTableViewModel model]];
//    self.tableView = [WBTableView tableViewWithFrame:self.view.bounds delegate:self.model];
//    self.tableView.rowHeight = 50;
//    [self.view addSubview:self.tableView];

    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
