//
//  WBTableView.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/25.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "WBTableView.h"

@implementation WBTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+(instancetype) tableViewWithFrame:(CGRect)frame delegate:(id<UITableViewDataSource,UITableViewDelegate>)delegate
{
    WBTableView * tableView = [[self alloc] initWithFrame:frame style:UITableViewStylePlain];
    [tableView setDelegate:delegate];
    [tableView setDataSource:delegate];
    [tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"wb"];
    
    
    return  tableView;
}

@end
